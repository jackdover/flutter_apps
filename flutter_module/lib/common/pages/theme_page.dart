import 'package:flutter/material.dart';
import '../../public.dart';

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("// ------ ------ ------ThemePage build ------ ------ ------ //");
    return Scaffold(
      appBar: AppBar(
        title: Text("ThemePage"),
      ),
      body: ListView(//显示主题色块
          children: [
        ...Global.primarySwatchs.map<Widget>((e) {
          return GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              child: Container(
                color: e,
                height: 40,
              ),
            ),
            onTap: () {
              //主题更新后，MaterialApp会重新build
              // listen: false 一定要写, 默认是true, 不写会报错, 错误信息如下
              Provider.of<ThemeModel>(context, listen: false).primarySwatch = e;
            },
          );
        }).toList(),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Container(
              color: Colors.black,
              height: 40,
              child: Text(
                "暗黑",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          onTap: () {
            //主题更新后，MaterialApp会重新build
            // listen: false 一定要写, 默认是true, 不写会报错, 错误信息如下
            var isDark = Provider.of<ThemeModel>(context, listen: false).isDarkBrightness;
            print("// ------ ------ ------ThemePage isDark $isDark");
            Provider.of<ThemeModel>(context, listen: false).isDarkBrightness = !isDark;
          },
        ),
      ]),
    );
  }
}

/// 不写 listen: false 报错信息如下
// Tried to listen to a value exposed with provider, from outside of the widget tree.
//
// This is likely caused by an event handler (like a button's onPressed) that called
// Provider.of without passing `listen: false`.
//
// To fix, write:
// Provider.of<ThemeModel>(context, listen: false);
//
// It is unsupported because may pointlessly rebuild the widget associated to the
// event handler, when the widget tree doesn't care about the value.
//
// The context used was: ThemePage
// 'package:provider/src/provider.dart':
// Failed assertion: line 262 pos 7: 'context.owner.debugBuilding ||
//           listen == false ||
//           debugIsInInheritedProviderUpdate'
