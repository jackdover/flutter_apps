import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("走丢了"),
      ),
      body: Container(
        child: Center(
          child: Text("走丢了呢, 返回重试"),
        ),
      ),
    );
  }
}
