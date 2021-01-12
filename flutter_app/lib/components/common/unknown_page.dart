import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("未知页面"),
      ),
      body: Container(
        child: Center(
          child: Text("页面跳转失败, 返回重试"),
        ),
      ),
    );
  }
}
