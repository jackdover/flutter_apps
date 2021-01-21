import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtils {
  // static double fontSize;
  // static Color backgroundColor;
  // static Color textColor;

  static void show(String content, {backgroundColor = Colors.black, textColor = Colors.white, fontSize = 16.0}) {
    // cancel all the toasts
    Fluttertoast.cancel();
    // 显示一个toast
    Fluttertoast.showToast(
        msg: content,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: backgroundColor,
        textColor: textColor,
        fontSize: fontSize);
  }
}
