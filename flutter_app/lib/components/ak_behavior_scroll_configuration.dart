import 'dart:io';
import 'package:flutter/material.dart';

/// 滚动组件拉到底或者顶时 Android上有蓝色的波浪效果, iOS是联动效果
/// Android上, 如果想要去掉这种波浪效果 (比如一些小的模块, 或者内部嵌套的模块)
/// 用法: 用ScrollConfiguration包裹滑动子布局, 并指定自定义的 behavior
///
///
/// ScrollConfiguration(
//     behavior: AKOverScrollBehavior(),  //自定义behavior2
//     child: ListView()  //你的滚动布局组件
// );
//
/// 或者
/// ScrollConfiguration(
//     behavior: AKBehavior(),  //自定义behavior1
//     child: ListView()  //你的滚动布局组件
// );

/// 自定义 behavior 1 : 取消滚动到边界后的效果: Android水波纹半圆, iOS联动
class AKBehavior extends ScrollBehavior {

  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    if (Platform.isAndroid || Platform.isFuchsia /*||Platform.isIOS*/) {
      return child;
    } else {
      return super.buildViewportChrome(context, child, axisDirection);
    }
  }
}

/// 建议使用
/// 自定义 behavior 1 :
class AKOverScrollBehavior extends ScrollBehavior{
@override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        return child;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return GlowingOverscrollIndicator(
          //不显示头部水波纹
          showLeading: false,
          //不显示尾部水波纹
          showTrailing: false,

          child: child,
          axisDirection: axisDirection,

          // 更改原来的常量白色 //color: _kDefaultGlowColor, // const Color _kDefaultGlowColor = Color(0xFFFFFFFF);
          color: Theme.of(context).accentColor,
        );
    }
    return null;
  }

}