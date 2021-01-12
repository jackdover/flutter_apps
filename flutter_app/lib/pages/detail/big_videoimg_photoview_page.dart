import 'package:flutter/material.dart';
import '../../api/response/detail/ItemInfoResponseEntity.dart';
import '../../components/third/ak_video_player.dart';
import '../../utils/screen_utils.dart';
import '../../utils/toast_utils.dart';

import 'package:photo_view/photo_view.dart';

// 视频图片混合的pageview, 其中图片需要photoview放大
class BigVideoImagePhotoViewPage extends StatefulWidget {
  static const String routeName = "/BigVideoImagePhotoViewPage";

  final Map arguments;

  const BigVideoImagePhotoViewPage({Key key, this.arguments}) : super(key: key);

  @override
  _BigVideoImagePhotoViewPageState createState() => _BigVideoImagePhotoViewPageState(/*arguments: this.arguments*/);
}

class _BigVideoImagePhotoViewPageState extends State<BigVideoImagePhotoViewPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true; // 页面状态保持

  PageController _pageController;

  int _currPageIndex = 0;
  Duration _currVideoPosition;

  int _pageIndex = 0;
  Duration _initPosition;
  List _goodBannerList;

  //
  // Map arguments;
  //  方式2: 通过构造获取传递的参数: 注意 构造调用时 要把参数传过来 _BigVideoImagePhotoViewPageState( arguments: this.arguments );
  // _BigImagePhotoViewGalleryState({this.arguments});
  //

  @override
  void initState() {
    super.initState();

    // 方式1: 通过widget获取传递过来的参数
    // 接收的参数
    _pageIndex = widget.arguments["_pageIndex"];
    _goodBannerList = widget.arguments["imageList"];


      _initPosition=widget.arguments["initPosition"];


    _pageController = PageController(
      initialPage: _pageIndex,
      viewportFraction: 1,
      keepPage: true,
    );

    _currPageIndex = _pageIndex;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: Container(
              child: _buildVideoImgPhotoView(),
            ),
          ),
        ),
      ),
      // 监听系统返回按钮的点击（给Scaffold包裹一个WillPopScope）: WillPopScope有一个onWillPop的回调函数，当我们点击返回按钮时会执行
      onWillPop: () {
        var backArguments;
        // 返回的参数
        if(_currPageIndex==0){
          backArguments = {"_backPageIndex": _currPageIndex,"_videoPosition":_currVideoPosition};
        }else{
          backArguments = {"_backPageIndex": _currPageIndex};
        }
        Navigator.of(context).pop(backArguments);
        return Future.value(false);
      },
    );
  }

  Widget _buildVideoImgPhotoView() {
    return Container(
        height: ScreenUtils.getScreenWidth(context),
        color: Colors.transparent,
        child: Stack(
          children: [
            Container(
              child: PageView.builder(
                itemCount: _goodBannerList.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    MasterVideo mVideo = _goodBannerList[index] as MasterVideo;
                    String imgUrl = mVideo.imageUrl;
                    String playUrl = mVideo.playUrl;
                    return Container(
                      child: Hero(
                        tag: "${imgUrl}:$index",
                        child: Material(
                          color: Colors.transparent,
                          child: AKVideoPlayer(
                            videoUrl: playUrl,
                            initPosition: _initPosition,
                            onPlayListener: (position){
                              _currVideoPosition=position;
                            },
                            // autoPlay: true,
                          ),
                        ),
                      ),
                    );
                  } else {
                    WareImage mWareImage = _goodBannerList[index] as WareImage;
                    String bigUrl = mWareImage.big;
                    return Container(
                      child: Hero(
                        tag: "${bigUrl}:$index",
                        child: Material(
                          color: Colors.transparent,
                          child: PhotoView(
                            imageProvider: NetworkImage(
                              bigUrl ??=
                                  "https://m.360buyimg.com/mobilecms/s714x714_jfs/t1/124890/19/4269/114748/5edb4dd5E51dc2178/2ccdea6db9bd6dda.jpg!q70.dpg.webp",
                            ),
                            maxScale: PhotoViewComputedScale.contained * 3.0,
                            minScale: PhotoViewComputedScale.contained * 0.5,
                            initialScale: PhotoViewComputedScale.contained * 1.0,
                            backgroundDecoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          /*Image.network(
                            bigUrl ??=
                                "https://m.360buyimg.com/mobilecms/s714x714_jfs/t1/124890/19/4269/114748/5edb4dd5E51dc2178/2ccdea6db9bd6dda.jpg!q70.dpg.webp",
                            fit: BoxFit.fitWidth,
                          ),*/
                        ),
                        /*// 禁用反向动画
                        flightShuttleBuilder: (context, anim, direction, fromContext, toContext) {
                          final Hero toHero = toContext.widget;
                          if (direction == HeroFlightDirection.pop) {
                            return FadeTransition(
                              opacity: AlwaysStoppedAnimation(0),
                              child: toHero.child,
                            );
                          } else {
                            return toHero.child;
                          }
                        },*/
                      ),
                    );
                  }
                },
                controller: _pageController,
                onPageChanged: (index) {
                  ToastUtils.show("滑到了 $index");
                  setState(() {
                    _currPageIndex = index;
                  });
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 72,
                height: 36,
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.only(bottom: 6),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${_currPageIndex + 1}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "/",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "${_goodBannerList.length}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
