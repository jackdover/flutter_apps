import 'package:flutter/material.dart';

import 'error_content_widget.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("错误页面"),
      ),
      body: ErrorContentWidget(),
    );
  }
}
