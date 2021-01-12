import 'package:flutter/material.dart';
import 'package:flutter/src/material/constants.dart';

class ScreenUtils {

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
