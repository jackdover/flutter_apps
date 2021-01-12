import 'package:dio/dio.dart';

import 'dio_manager.dart';

// ------ ------ 单例 Api
class AKApi {
  static AKApi _singleton;

  //工厂构造函数
  factory AKApi() {
    if (_singleton == null) {
      _singleton = AKApi._internal();
    }
    return _singleton;
  }

  //构造函数私有化，防止被误创建
  AKApi._internal() {
    _AKDio = DioManager().initDio();
  }

  Dio _AKDio = null;

  Dio get AKDio {
    return _AKDio;
  }
}
