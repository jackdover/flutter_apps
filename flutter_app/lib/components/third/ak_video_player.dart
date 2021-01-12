import 'dart:async';

import '../../components/ak_video_slider.dart';
import '../../components/ak_visibility.dart';
import '../../utils/screen_utils.dart';
import '../../utils/toast_utils.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

typedef OnTapCallback = void Function(Duration position);

const List<double> videoSpeedList = [1.0, 1.25, 1.5, 2.0, 0.8]; // 0.25, 2.0

//视频播放器封装需要使用动态类
class AKVideoPlayer extends StatefulWidget {
  final String videoUrl; // 视频网络地址URL

  final bool autoPlay;
  final Duration initPosition;
  final OnTapCallback onTapCallback;
  final OnTapCallback onPlayListener;

  // 因为是按照视频原始比例进行播放, 所以只需要指定视频宽 或者 视频高 其一即可, 否则报错
  final double videoWidth; // 视频宽度 : videoWidth 和 videoHeight 只需要指定一个即可, 否则报错, 因为是按照视频原始比例进行播放
  final double videoHeight; // 视频高度 : videoWidth 和 videoHeight 只需要指定一个即可, 否则报错,

  const AKVideoPlayer({
    Key key,
    this.videoUrl,
    this.autoPlay = false,
    this.initPosition,
    this.onTapCallback,
    this.onPlayListener,
    this.videoWidth,
    this.videoHeight,
  })  : assert(
            videoWidth == null || videoHeight == null,
            'Cannot provide both a Width and a Height\n'
            'Because video has herself play AspectRatio'),
        super(key: key);

  @override
  _AKVideoPlayerState createState() => _AKVideoPlayerState();
}

//继承AKVideoPlayer类
class _AKVideoPlayerState extends State<AKVideoPlayer> {
  //定义一个VideoPlayerController
  VideoPlayerController _controller;

  // 是否显示控制UI界面
  bool showControllerUI = true;

  // 倍速文字
  String _speedText = '倍速';

  // 倍速角标
  int _speedIndex = 0;

  // 总进度
  int _totalDurationSeconds = 0;
  String _maxSliderText = '';

  // 实时进度
  String _currSliderText = '00:00:00';

  // 控制UI界面 隐藏倒计时
  Timer _countdownTimer;

  // 倒计时任务: 目的就是延迟并隐藏控制UI
  void _countdownStart() {
    _countdownTimer?.cancel();
    // 过一会隐藏
    _countdownTimer = new Timer(new Duration(seconds: 3), () {
      // 只在倒计时结束时回调
      ToastUtils.show("倒计时结束");

      setState(() {
        showControllerUI = false;
      });
    });
  }

  // 倒计时任务: 目的就是延迟并隐藏控制UI
  void _countdownCancel() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
  }

  void _handleShowControllerUI(bool show) {
    if(show){
      // 释放定时器资源
      _countdownCancel();
      setState(() {
        showControllerUI = true;
      });
    }else{
      _countdownStart();
    }
  }

  // 改变播放倍速
  void _changeVideoSpeed() {
    setState(() {
      if (_controller != null) {
        _speedIndex++;
        if (_speedIndex >= videoSpeedList.length) {
          _speedIndex = 0;
        }
        double videoSpeed = videoSpeedList[_speedIndex];
        _speedText = "${videoSpeed}X";
        _controller.setPlaybackSpeed(videoSpeed);
      }
    });
  }

  // 生成实时进度文字
  String _changeCurrentSliderText(Duration currPosition) {
    int videoHours = _controller.value.duration.inHours;
    int currentVideoHours = currPosition.inHours;
    int currVideoMinutes = currPosition.inMinutes%60;
    int currVideoSeconds = currPosition.inSeconds%60;
    return "${currentVideoHours > 0 ? currentVideoHours < 10 ? '0$currentVideoHours:' : '$currentVideoHours:' : videoHours > 0 ? '00:' : ''}" +
        "${currVideoMinutes > 0 ? currVideoMinutes < 10 ? '0$currVideoMinutes' : '$currVideoMinutes' : '00'}:" +
        "${currVideoSeconds > 0 ? currVideoSeconds < 10 ? '0$currVideoSeconds' : '$currVideoSeconds' : '00'}";
  }

  //重写类方法initState()，初始化界面
  @override
  void initState() {
    super.initState();

    //设置视频参数 (..)是级联的意思
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        // 确保在初始化视频后显示第一帧，直至在按下播放按钮。
        setState(() {
          // 初始化完成, 且加载了视频第一帧

          // 初始进度条
          int videoHours = _controller.value.duration.inHours;
          int videoMinutes = _controller.value.duration.inMinutes%60;
          int videoSeconds = _controller.value.duration.inSeconds%60;
          _totalDurationSeconds = _controller.value.duration.inSeconds;
          _maxSliderText = "${videoHours > 0 ? videoHours < 10 ? '0$videoHours:' : '$videoHours:' : ''}" +
              "${videoMinutes > 0 ? videoMinutes < 10 ? '0$videoMinutes' : '$videoMinutes' : '00'}:" +
              "${videoSeconds > 0 ? videoSeconds < 10 ? '0$videoSeconds' : '$videoSeconds' : '00'}";

          _currSliderText = _changeCurrentSliderText(Duration());

          // 自动播放
          if (widget.autoPlay) {
            _controller.play();
            showControllerUI = false;
          }

          if (widget.initPosition != null && widget.initPosition.inSeconds < _totalDurationSeconds) {
            _controller.seekTo(widget.initPosition);
          }

          // _controller.seekTo(Duration(seconds: 42));
          // _controller.setLooping(true);
          // _controller.setPlaybackSpeed(2.0); // 0.25, 2.0
          // _controller.setVolume(0.2); //0.0, 1.0
        });
      });

    _controller.addListener(() {
      print("_controller.value------position:${_controller.value.position}---duration:${_controller.value.duration}" +
          "---position:${_controller.value.position.inSeconds}---duration:${_controller.value.duration.inSeconds}" +
          "---isPlaying:${_controller.value.isPlaying}---isLooping:${_controller.value.isLooping}" +
          "---isBuffering:${_controller.value.isBuffering}---playbackSpeed:${_controller.value.playbackSpeed}" +
          "---size:${_controller.value.size}---volume:${_controller.value.volume}");

      if (widget.onPlayListener != null) {
        widget.onPlayListener(_controller.value.position);
      }

      if (_controller.value.position.inSeconds == _controller.value.duration.inSeconds &&
          _controller.value.isPlaying == false) {
        // 播放结束
        // _controller.seekTo(Duration());

        // 显示控制UI界面
        _handleShowControllerUI(true);
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        //  _controller.value.initialized表示视频是否已加载并准备好播放，
        // 如果是true则返回AspectRatio（固定宽高比的组件,宽高比为视频本身的宽高比）
        // VideoPlayer为视频插放器，对像就是前面定义的_controller
        child: _controller.value.initialized
            ? /*AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ) */
            Container(
                width: widget.videoWidth,
                height: widget.videoHeight,
                color: Colors.white,
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(
                    children: [
                      // 视频播放界面
                      VideoPlayer(_controller),

                      /*  // 视频控制界面
                       Container(color: Colors.red, child: Align(child: Text("222222"),alignment: Alignment.bottomRight,)),
                      Stack(
                        children: [
                          Container(child: Text("333")),
                        ],
                      ),*/

                      // 2 播放控制界面

                      // 2.1 播放暂停按钮
                      // 2.2 进度条, 音量, 倍速, 全屏
                      // 2.3 左半部分滑动: 亮度
                      // 2.4 右半部分滑动: 音量

                      /*  Container(
                        color: Colors.red,
                        child: Align(
                          child: Text("222222"),
                          alignment: Alignment.bottomRight,
                        ),
                      ),

                      InkWell(
                        child: Container(
                          color: Colors.transparent,
                          child: Stack(
                            children: [
                              // 2.1 播放暂停按钮
                              Center(
                                child: InkWell(
                                  child: Container(
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.circular(64),
                                      color: Colors.black26,
                                    ),
                                    child: Icon(
                                      //_controller.value.isPlaying：判断视频是否正在播放
                                      _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      //_controller.value.isPlaying：判断视频是否正在播放
                                      //_controller.pause()：如果是则暂停视频。
                                      // _controller.play():如果不是则播放视频
                                      _controller.value.isPlaying ? _controller.pause() : _controller.play();
                                    });
                                  },
                                ),
                              ),

                              /*
                              // 全屏播放时, 实现此功能
                              // 2.3 左半部分滑动: 亮度
                              // 2.4 右半部分滑动: 音量
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.red,
                                    ),
                                  ),
                                  Expanded(
                                    child: AKTouchProgressbar(),
                                  ),
                                ],
                              ),

                              // 2.2 进度条, 音量, 倍速, 全屏 //todo
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  children: [
                                    Text("进度条"),
                                    Text("3333"),
                                    Text("全屏"),
                                  ],
                                ),
                              ),*/
                            ],
                          ),
                        ),
                        onTap: () {
                          ToastUtils.show("点击了控制器UI界面");
                        },
                      ),
*/
                      InkWell(
                        child: AKVisibility(
                          visible: showControllerUI ? VisibilityFlag.visible : VisibilityFlag.invisible,
                          child: Container(
                            color: Colors.transparent,
                            child: Stack(
                              children: [
                                // 2.1 播放暂停按钮
                                Center(
                                  child: InkWell(
                                    child: Container(
                                      width: 56,
                                      height: 56,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1.5,
                                        ),
                                        borderRadius: BorderRadius.circular(64),
                                        color: Colors.black26,
                                      ),
                                      child: Icon(
                                        //_controller.value.isPlaying：判断视频是否正在播放
                                        _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                                        color: Colors.white,
                                        size: 32,
                                      ),
                                    ),
                                    onTap: () {
                                      // 控制播放状态
                                      setState(() {
                                        //_controller.value.isPlaying：判断视频是否正在播放
                                        //_controller.pause()：如果是则暂停视频。
                                        // _controller.play():如果不是则播放视频
                                        // _controller.value.position.inSeconds == _controller.value.duration.inSeconds:已播完
                                        // if (_controller.value.isPlaying) {
                                        //   // 在播
                                        //   _controller.pause();
                                        // } else {
                                        //   // 未播
                                        //   if (_controller.value.position.inSeconds ==
                                        //       _controller.value.duration.inSeconds) {
                                        //     // 已播完
                                        //     _controller.seekTo(Duration());
                                        //     _controller.play();
                                        //   } else {
                                        //     // 未播完
                                        //     _controller.play();
                                        //   }
                                        // }

                                        _controller.value.isPlaying ? _controller.pause() : _controller.play();
                                      });

                                      // 控制界面显隐藏 //todo
                                      // _countdownStart();
                                      _handleShowControllerUI(false);
                                    },
                                  ),
                                ),

                                /*
                                // 全屏播放时, 实现此功能
                                // 2.3 左半部分滑动: 亮度
                                // 2.4 右半部分滑动: 音量
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.red,
                                      ),
                                    ),
                                    Expanded(
                                      child: AKTouchProgressbar(),
                                    ),
                                  ],
                                ),
*/
                                // 2.2 进度条, 音量, 倍速, 全屏 //todo
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        //渐变位置
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        // stops: [0.0, 1.0],         //[渐变起始点, 渐变结束点]
                                        //渐变颜色[始点颜色, 结束颜色]
                                        colors: [Colors.transparent, Colors.black45],
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        // 进度条
                                        Expanded(
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Text(
                                                  _currSliderText,
                                                  style: TextStyle(color: Colors.white, fontSize: 11),
                                                ),
                                                Expanded(
                                                  child: AKVideoSlider(
                                                    sliderValue: 0,
                                                    onChanged: (value) {
                                                      //todo
                                                      int valueSeconds=(_totalDurationSeconds*value).toInt();
                                                      print('Slider------onChanged------_totalDurationSeconds:$_totalDurationSeconds');
                                                      print('Slider------onChanged------valueSeconds:$valueSeconds');
                                                      setState(() {
                                                        _currSliderText=_changeCurrentSliderText(Duration(seconds: valueSeconds));
                                                        _controller.seekTo(Duration(seconds: valueSeconds));
                                                      });
                                                    },
                                                    onChangeStart: (value){
                                                      _handleShowControllerUI(true);
                                                    },
                                                    onChangeEnd: (value){
                                                      // 控制界面显隐藏
                                                      // _countdownStart();
                                                      _handleShowControllerUI(false);
                                                    },
                                                  ),
                                                ),
                                                Text(
                                                  _maxSliderText,
                                                  style: TextStyle(color: Colors.white, fontSize: 11),
                                                ),
                                              ],
                                            ),
                                            // color: Colors.red,
                                            height: 40,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.only(left: 12, right: 12),
                                          ),
                                        ),

                                        // 倍速
                                        InkWell(
                                          child: Container(
                                            height: 40,
                                            width: 48,
                                            // color: Colors.blue,
                                            // margin: const EdgeInsets.only(left: 4, right: 4),
                                            alignment: Alignment.center,
                                            child: Center(
                                              child: Container(
                                                padding: const EdgeInsets.only(left: 4, right: 4),
                                                decoration: BoxDecoration(
                                                  // color: Colors.black54,
                                                  borderRadius: BorderRadius.circular(40),
                                                  border: Border.all(color: Colors.white),
                                                ),
                                                child: Text(
                                                  _speedText,
                                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            ToastUtils.show("点击了倍速");
                                            _changeVideoSpeed();

                                            // 控制界面显隐藏
                                            // _countdownStart();
                                            _handleShowControllerUI(false);
                                          },
                                        ),
                                        // 全屏
                                        InkWell(
                                          child: Container(
                                            child: Icon(
                                              Icons.fullscreen,
                                              size: 24,
                                              color: Colors.white,
                                            ),
                                            // color: Colors.green,
                                            height: 40,
                                            width: 40,
                                            alignment: Alignment.center,
                                          ),
                                          onTap: () {
                                            ToastUtils.show("点击了全屏");
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          ToastUtils.show("点击了控制器UI界面");

                          if (showControllerUI) {
                            // _countdownStart();
                            _handleShowControllerUI(false);
                          } else {
                            setState(() {
                              showControllerUI = !showControllerUI;
                            });
                          }

                          // 在播
                          if (_controller.value.isPlaying) {
                            if (widget.onTapCallback != null) {
                              widget.onTapCallback(_controller.value.position);
                              _controller.pause();
                            }
                          }
                        },
                      ),
                    ],
                  ),
                ),
              )
            //如果视频没有加载好或者因网络原因加载不出来则返回Container 组件
            //一般用于放置过渡画面
            : Container(
                color: Colors.black12,
                child: Center(
                  child: InkWell(
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(64),
                        color: Colors.black26,
                      ),
                      child: Icon(
                        Icons.refresh,
                        color: Colors.white70,
                        size: 32,
                      ),
                    ),
                    onTap: () {
                      ToastUtils.show("加载失败, 点击重试");
                    },
                  ),
                ),
              ),
      ),
    );
  }

  //dispose():程序中是用来关闭一个GUI页面的
  //视频播放完需要把页面关闭
  @override
  void dispose() {
    _controller.dispose();
    // 释放定时器资源
    _countdownCancel();
    super.dispose();
  }
}

/// 触摸改变进度条: 只有全屏才可以
class AKTouchProgressbar extends StatefulWidget {
  @override
  _AKTouchProgressbarState createState() => _AKTouchProgressbarState();
}

class _AKTouchProgressbarState extends State<AKTouchProgressbar> {
  // 触摸满值
  double percent100 = 480;

  // 触摸变量
  double startP = 0;

  // 实际进度条
  int progress = 0;

  @override
  void initState() {
    // if(){
    //
    // }

    startP = 0;
  }

  @override
  Widget build(BuildContext context) {
    percent100 = ScreenUtils.getScreenWidth(context);
    return GestureDetector(
      child: Container(
        // height: ScreenUtils.getScreenWidth(context), //todo
        color: Colors.orange,
      ),
      onVerticalDragDown: (DragDownDetails details) {
        print("------onVerticalDragDown------${details}");

        startP = 0;
      },
      onVerticalDragStart: (DragStartDetails details) {
        print("------onVerticalDragStart------${details}");

        // 在此处显示音量条, 并获取当前音量 //todo
        // 当前y轴位置
        print("------onVerticalDragStart------localPosition.dy:${details.localPosition.dy}");

        startP = 0;

        progress = 10;
      },
      onVerticalDragUpdate: (DragUpdateDetails details) {
        print("------onVerticalDragUpdate------${details}");
        // 在此处对上一步获取的音量进行改变 //todo
        // 实时y轴位置
        print("------onVerticalDragUpdate------delta.dy:${details.delta.dy}");
        print("------onVerticalDragUpdate------localPosition.dy:${details.localPosition.dy}");

        startP += details.delta.dy;

        changeProgress(startP);
      },
      onVerticalDragEnd: (DragEndDetails details) {
        print("------onVerticalDragEnd------${details}");
        // 在此处, 动画隐藏音量条 //todo

        startP = 0;
      },
      onVerticalDragCancel: () {
        print("------onVerticalDragCancel------ ");

        startP = 0;
      },
    );
  }

  // 改变进度条
  void changeProgress(double startP) {
    double changedP = 100 * startP / percent100;
    print("------changeProgress------startP:$startP------percent100:$percent100-----changedP:${changedP}");
    // todo 实际 progress += changedP;   if(progress<0){progress=0;}else if(progress>100){progress=100;}
    progress += changedP.toInt();
    if (progress < 0) {
      progress = 0;
    } else if (progress > 100) {
      progress = 100;
    }
    ToastUtils.show("${progress}");
  }
}
