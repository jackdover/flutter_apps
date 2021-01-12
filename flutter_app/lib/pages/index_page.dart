import 'package:flutter/material.dart';
import '../config/index.dart';
import '../pages/cart_page.dart';
import '../pages/category_page.dart';
import '../pages/find_page.dart';
import '../pages/home_page.dart';
import '../pages/mine_page.dart';

import 'package:provider/provider.dart';
import '../provides/providers.dart';

class IndexPage extends StatelessWidget {
  static const String routeName = "/IndexPage";

  final List<Widget> tabPages = [
    HomePage(),
    CategoryPage(),
    FindPage(),
    CartPage(),
    MinePage(),
  ];

  final List<BottomNavigationBarItem> tabItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text(
        AKString.bottomTabTitle_0, //首页
        style: TextStyle(fontSize: 12),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category),
      title: Text(AKString.bottomTabTitle_1), //分类
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.near_me),
      title: Text(AKString.bottomTabTitle_2), //发现
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      title: Text(AKString.bottomTabTitle_3), //购物车
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text(AKString.bottomTabTitle_4), //我的
    ),
  ];

  void _onTapped(int index) {
    print("------_onTapped:$index");
  }

  @override
  Widget build(BuildContext context) {
    print("------build------");
    return Consumer<CounterProvider>(builder: (ctx, counterPro, child) {
      return Scaffold(
        body: IndexedStack(
          index: counterPro.counter,
          children: tabPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12.0,
          unselectedFontSize: 12.0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          iconSize: 24,
          // currentIndex: counterPro.currentIndex,
          currentIndex: counterPro.counter,
          // onTap: _onTapped,
          onTap: (index) {
            counterPro.counter = index;
          },
          items: tabItems,
        ),
      );
    });
  }
}
