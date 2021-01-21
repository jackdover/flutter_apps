import 'package:flutter/material.dart';

import '../public.dart';

class RouteNames {
  static String IndexPage = '/IndexPage';
  static String ThemePage = '/ThemePage';
  static String LocalePage = '/LocalePage';
}

// 注册路由
final routes = {
  // ------ ------ ------ 不传参  ------ ------ ------ //
  '/': (context) => IndexPage(), //默认页
  RouteNames.IndexPage: (context) => IndexPage(),
  RouteNames.ThemePage: (context) => ThemePage(),
  RouteNames.LocalePage: (context) => LocalePage(),

  // HomePage.routeName: (context) => HomePage(),
  // CategoryPage.routeName: (context) => CategoryPage(),
  // FindPage.routeName: (context) => FindPage(),
  // CartPage.routeName: (context) => CartPage(),
  // MinePage.routeName: (context) => MinePage(),
  //

  // LoginPage.routeName: (context) => LoginPage(),
  // SettingPage.routeName: (context) => SettingPage(),
  // GeneralSettingPage.routeName: (context) => GeneralSettingPage(),

  // ------ ------ ------ 要传参  ------ ------ ------ //

  // OrderlistPage.routeName: (context, {arguments}) => OrderlistPage(arguments: arguments),
  //
  //
  // AKWebViewPage.routeName: (context, {arguments}) => AKWebViewPage(arguments: arguments),
  // ExpansionListItemPage.routeName: (context, {arguments}) => ExpansionListItemPage(arguments: arguments),
  //
  // GoodsInfoPage.routeName: (context, {arguments}) => GoodsInfoPage(arguments: arguments),
  // BigImagePhotoViewPage.routeName: (context, {arguments}) => BigImagePhotoViewPage(arguments: arguments),
  // BigVideoImagePhotoViewPage.routeName: (context, {arguments}) => BigVideoImagePhotoViewPage(arguments: arguments),
};

// 路由页面, 固定写法
// ignore: strong_mode_top_level_function_literal_block, top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String routeName = settings.name;
  final Function pageBuilder = routes[routeName];
  if (pageBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(builder: (context) => pageBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pageBuilder(context));
      return route;
    }
  }
  return MaterialPageRoute(builder: (context) => IndexPage());
};

// 未找到路由页面
// ignore: top_level_function_literal_block
var onUnknownRoute = (RouteSettings settings) {
  return MaterialPageRoute(builder: (context) {
    return UnknownPage();
  });
};
