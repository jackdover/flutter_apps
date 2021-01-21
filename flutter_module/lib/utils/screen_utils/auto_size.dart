import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';

// ------ ------ ------ 新: 不要 context ------ ------ ------ //
/*
* rpx适配 工具类
* 工具类需要进行初始化，
* 也可以传入一个可选的参数，以什么尺寸作为设计稿
*  */
class AutoSize {
  static double px; // 尺寸大小单位
  static double pt = 1.0; // 文字大小单位
  static double screenWidth;
  static double screenHeight;
  static double statusHeight;

  // 由于上边的init需要传入 context, 在 MaterialApp 内部初始化
  // 为了兼容, 采用新方案如下, 不需要传入context, 可以在 MaterialApp 外部初始化
  // 参数1: 设计尺寸; 参数2:文字是否按比例缩放适配
  static void init({double designWidth = 750, textScale = true}) {
    // 设计宽度尺寸
    // 手机物理分辨率
    final physicalWidth = window.physicalSize.width;
    final physicalHeight = window.physicalSize.height;
    print("AutoSize---物理分辨率:$physicalWidth / $physicalHeight");
    // 像素转化比
    final devicePixelRatio = window.devicePixelRatio;
    // 文字转换比
    final textScaleFactor = window.textScaleFactor;
    print("AutoSize---像素转化比:$devicePixelRatio , textScale: $textScaleFactor");
    // 状态栏高
    statusHeight = window.padding.top / devicePixelRatio;
    print("AutoSize---状态栏高:$statusHeight");
    // 屏幕宽高
    screenWidth = physicalWidth / devicePixelRatio;
    screenHeight = physicalHeight / devicePixelRatio;
    print("AutoSize---屏幕宽高:$screenWidth / $screenHeight");
    // 适配单位
    px = screenWidth / designWidth;
    // 文字单位
    // pt = textScale ? textScaleFactor : 1.0;
    pt = textScale ? px / textScaleFactor : px / 1.0;
    print("AutoSize---init------ px:$px , pt:$pt");
    print("AutoSize---init---750px=${px * 750} , 30px=${px * 30} , 30pt:${pt * 30}");
  }

  // 按照像素px来设置
  static double setPx(double size) {
    return px * size;
  }

  static double setPt(double fontSize) {
    // return px * fontSize;
    return pt * fontSize;
  }
}

// ------ ------ ------ 旧: 需要 context ------ ------ ------ //
/*
* rpx适配 工具类
* 工具类需要进行初始化，传入 context
* 必须传入context，利用媒体查询获取屏幕的宽度和高度
* 也可以传入一个可选的参数，以什么尺寸作为设计稿
*  */
class _AutoSize {
  static double rpx;
  static double px;

  /* 工具类需要进行初始化，传入context
可以通过传入context，利用媒体查询获取屏幕的宽度和高度
也可以传入一个可选的参数，以什么尺寸作为设计稿 */

  /// 注意：必须在已经有 MaterialApp 的Widget中使用context，否则是无效的, 即必须在 MaterialApp 内部
  static void init(BuildContext context, {double standardUIWidth = 750}) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    rpx = screenWidth / standardUIWidth;
    // 如果写 rpx, 需要对设计图的尺寸 2倍数字来写, 所以直接转化成px来写(默认2倍)
    px = rpx * 2;
    print("_AutoSize---init------screenWidth:$screenWidth , screenHeight:$screenHeight");
    print("_AutoSize---init------rpx:$rpx , px:$px");
  }

  // 按照像素px来设置
  static double setPx(double size) {
    return px * size;
  }

  // 按照rpx来设置
  static double setRpx(double size) {
    return rpx * size;
  }
}

// ------ ------ ------ 通过 context 获取 ------ ------ ------ //

class _ScreenUtils {
  // 屏幕宽度
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // 屏幕高度
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // 状态栏高度
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  // appbar高度 Dart Packages/flutter/src/material/constans.dart
  static double getAppBarHeight(BuildContext context) {
    return kToolbarHeight;
  }

  // appbar高度 Dart Packages/flutter/src/material/constans.dart
  static double getBottomNavigationBarHeight(BuildContext context) {
    return kBottomNavigationBarHeight;
  }
}
