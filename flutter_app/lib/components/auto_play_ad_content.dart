import 'dart:async';

import 'package:flutter/material.dart';

// 自动向上翻滚的广告内容组件 : 无限循环消息轮播效果
/// 0. 禁止了手动滑动, 当然也可以放开(修改 physics 属性)
/// 1. 控制自动轮播 : Timer对象，定时调用PageView的翻页
/// 2. 消息无限循环 : 在数据源末尾再添加第一个数据，当PageView滚动到最后一条消息时，直接跳转到第一条消息，视觉上不会有任何感知
class AutoPlayAdsContentWidget extends StatefulWidget {
  int count; // 子视图数量
  IndexedWidgetBuilder itemBuilder; // 子视图构造器

  AutoPlayAdsContentWidget(this.count, this.itemBuilder);

  @override
  _AutoPlayAdsContentWidgetState createState() => _AutoPlayAdsContentWidgetState();
}

class _AutoPlayAdsContentWidgetState extends State<AutoPlayAdsContentWidget> {
  static const String TAG = "AutoPlayAdsContentWidget";

  PageController _controller;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    print("${TAG}------initState------");

    _controller = PageController();
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      print("$TAG---执行时间---");
      // 如果当前位于最后一页，则直接跳转到第一页，两者内容相同，跳转时视觉上无感知
      if (_controller.page.round() >= widget.count) {
        _controller.jumpToPage(0);
      }
      _controller.nextPage(duration: Duration(seconds: 1), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _controller = null;
    _timer?.cancel();
    _timer = null;
    print("${TAG}------dispose------");
  }

  @override
  Widget build(BuildContext context) {
    print("${TAG}------build------");
    return PageView.builder(
      physics:NeverScrollableScrollPhysics(),//禁止手动滑动
      scrollDirection: Axis.vertical,
      controller: _controller,
      itemBuilder: (buildContext, index) {
        if (index < widget.count) {
          return widget.itemBuilder(buildContext, index);
        } else {
          return widget.itemBuilder(buildContext, 0);
        }
      },
      itemCount: widget.count + 1, // 在原数据末尾添加一笔数据(即第一笔数据)，用于实现无限循环滚动效果
    );
  }
}
