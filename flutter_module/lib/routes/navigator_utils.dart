import 'dart:async';

import 'package:flutter/material.dart';

typedef OnResult = Widget Function(Object result);

class NavigatorUtils {
  // ------ ------ ------ 不传参  ------ ------ ------ //
  // // Navigator.pushNamed(context, DetailPage.routeName);

  // ------ ------ ------ 要传参  ------ ------ ------ //

  // var arguments = {"args": "我是传值"};
  // Navigator.of(context).pushNamed(DetailPage.routeName, arguments: arguments).then((result) {
  // // 接收返回时传递的数据: 类似 startActivityForResult 的 onRresult
  // print("result=${result}");
  // });

  // ------ ------ ------ 返回 不传参  ------ ------ ------ //
  // Navigator.of(context).pop();

  // ------ ------ ------ 返回 传递参数  ------ ------ ------ //
  // 如何在返回时传值?如何接收? startActivityForResult
  // Navigator.of(context).pop(object);
  // Navigator.of(context).pop("a back detail message");

  // ------ ------ ------ 接收返回参数  ------ ------ ------ //
  // var arguments = {"args": "我是传值"};
  // Navigator.of(context).pushNamed(DetailPage.routeName, arguments: arguments).then((result) {
  // // 接收返回时传递的数据: 类似 startActivityForResult 的 onRresult
  // print("result=${result}");
  // });



  // ------ ------ ------ 跳转 : 新增栈  ------ ------ ------ //
/*  static Future<T> pushNamed<T extends Object>(BuildContext context, String routeName,
      {Object arguments, OnResult onResult}) {
    Navigator.of(context).pushNamed(routeName, arguments: arguments).then(onResult);
  }*/

  // ------ ------ ------ 跳转 : 先关闭,再新增栈  ------ ------ ------ //
  // Navigator.pushReplacementNamed(context, "/screen4");
  // Navigator.popAndPushNamed(context, "/screen4"); // 跟上面的区别:会执行一个pop对应的动画

  // ------ ------ ------ 跳转 : 清栈  ------ ------ ------ //
  // Navigator.of(context).pushNamedAndRemoveUntil('/screen4', (Route<dynamic> route) => false);
  //  这里的 (Route<dynamic> route) => false 能够确保删除先前所有实例, 即清栈

  // ------ ------ ------ 跳转 : 清部分栈  ------ ------ ------ //
  // Navigator.of(context).pushNamedAndRemoveUntil('/screen4', ModalRoute.withName('/screen1'));
  // 会清除栈中位于screen1以上的所有实例
  // Navigator.of(context).pushNamedAndRemoveUntil('/screen1', ModalRoute.withName('/screen1'));
  // 执行这句, 如果之前的栈中从在screen1, 则会有两个screen1

  // ------ ------ ------ 返回 : 清部分栈  ------ ------ ------ //
  // Navigator.popUntil(context, ModalRoute.withName('/a'));
  // 保留栈中 a及其下面的实例


  // ------ ------ ------ 自定义路由  ------ ------ ------ //
  // ------ ------ ------ opaque：false  ------ ------ ------ //
  // 可以创建自己的一个窗口组件库路由类（如PopupRoute，ModalRoute或 PageRoute）的子类
  // 下面是一个在路由出现或消失时旋转并淡化其子节点的示例。 此路由不会遮挡整个屏幕，因为它指定了opaque：false，就像弹出路由一样
  // Navigator.push(context, PageRouteBuilder(
  // opaque: false,
  // pageBuilder: (BuildContext context, _, __) {
  // return Center(child: Text('My PageRoute'));
  // },
  // transitionsBuilder: (___, Animation<double> animation, ____, Widget child) {
  // return FadeTransition(
  // opacity: animation,
  // child: RotationTransition(
  // turns: Tween<double>(begin: 0.5, end: 1.0).animate(animation),
  // child: child,
  // ),
  // );
  // }
  // ));


  // ------ ------ ------ 另一个示例
  // return new PageRouteBuilder(
  // pageBuilder: (BuildContext context, _, __) {
  // //这里为返回的Widget
  // return HomePage();
  // },
  // opaque: false,
  // //跳转动画
  // transitionDuration: new Duration(milliseconds: 200),
  // transitionsBuilder:
  // (___, Animation<double> animation, ____, Widget child) {
  // return new FadeTransition(
  // opacity: animation,
  // child: new ScaleTransition(
  // scale: new Tween<double>(begin: 0.5, end: 1.0)
  //     .animate(animation),
  // child: child,
  // ),
  // );
  // });
}
