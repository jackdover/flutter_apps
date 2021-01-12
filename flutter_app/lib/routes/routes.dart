import 'package:flutter/material.dart';
import '../components/common/unknown_page.dart';
import '../components/third/ak_webview_page.dart';
import '../pages/detail/big_img_photoview_page.dart';
import '../pages/detail/big_videoimg_photoview_page.dart';
import '../pages/detail/expansion_list_item_page.dart';
import '../pages/detail/goods_info_page.dart';
import '../pages/index_page.dart';
import '../pages/home_page.dart';
import '../pages/category_page.dart';
import '../pages/find_page.dart';
import '../pages/cart_page.dart';
import '../pages/login/login.dart';
import '../pages/mine_page.dart';
import '../pages/profile/orderlist_page.dart';
import '../pages/setting/general_setting.dart';
import '../pages/setting_page.dart';

// 注册路由
final routes = {
  '/': (context) => IndexPage(),
  IndexPage.routeName: (context) => IndexPage(),

  HomePage.routeName: (context) => HomePage(),
  CategoryPage.routeName: (context) => CategoryPage(),
  FindPage.routeName: (context) => FindPage(),
  CartPage.routeName: (context) => CartPage(),
  MinePage.routeName: (context) => MinePage(),

  // '/login': (context, settings) => LoginPage(),//todo
  // '/movie': (context, settings) => Movie(),
  // '/settings': (context, settings) => Settings(),
  LoginPage.routeName: (context) => LoginPage(),
  SettingPage.routeName: (context) => SettingPage(),
  GeneralSettingPage.routeName: (context) => GeneralSettingPage(),
  // '/general_settings': (context, settings) => GeneralSettings(),


  OrderlistPage.routeName: (context, {arguments}) => OrderlistPage(arguments: arguments),


  AKWebViewPage.routeName: (context, {arguments}) => AKWebViewPage(arguments: arguments),
  ExpansionListItemPage.routeName: (context, {arguments}) => ExpansionListItemPage(arguments: arguments),

  GoodsInfoPage.routeName: (context, {arguments}) => GoodsInfoPage(arguments: arguments),
  BigImagePhotoViewPage.routeName: (context, {arguments}) => BigImagePhotoViewPage(arguments: arguments),
  BigVideoImagePhotoViewPage.routeName: (context, {arguments}) => BigVideoImagePhotoViewPage(arguments: arguments),
};

// 固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route =
      MaterialPageRoute(builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return MaterialPageRoute(builder: (context) => IndexPage());
};

// 未找到路由页面
var onUnknownRoute = (RouteSettings settings) {
  return MaterialPageRoute(builder: (ctx) {
    return UnknownPage();
  });
};
