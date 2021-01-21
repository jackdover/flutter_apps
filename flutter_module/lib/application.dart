
import 'package:flutter/material.dart';

class Application {
  // ------ ------ ------ token  ------ ------ ------ //
  static String _token = "";

  static String get token {
    return _token;
  }

  static set token(String value) {
    _token = value;
  }


}
