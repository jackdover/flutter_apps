import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Application {
  // ------ ------ token
  static String _token = "";

  static String get token {
    return _token;
  }

  static set token(String value) {
    _token = value;
  }

  static toast(String content) {
    // 显示一个toast
    Fluttertoast.showToast(
        msg: content,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
