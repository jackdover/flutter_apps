import 'package:flutter/material.dart';

class ErrorContentWidget extends StatelessWidget {
  final String errorStr;

  ErrorContentWidget({Key key, this.errorStr = "出现错误, 返回重试"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(errorStr),
      ),
    );
  }
}
