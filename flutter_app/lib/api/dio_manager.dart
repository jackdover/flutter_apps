import 'dart:io';

import 'package:dio/dio.dart';

import '../base/application.dart';

import 'api_config.dart';

class DioManager {
  // ------ ------ Dio
  Dio initDio() {
    return Dio()
      ..options = BaseOptions(
        // 全局属性：请求前缀、连接超时时间、响应超时时间
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: 8*1000,
        receiveTimeout: 8*1000,
        responseType: ResponseType.json,
        validateStatus: (status) {
          // 不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
          return true;
        },
        // headers: {
        //   'Accept': 'application/json,*/*',
        //   'Content-Type': 'application/json',
        //   'token': Application.token // todo
        // },
      )
      ..interceptors.add(CustomInterceptors());
      // ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true))//打开请求日志

  }
}

class CustomInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
    print('====== ====== ====== onRequest ====== ====== ======'); //拦截了请求
    print("REQUEST[${options?.method}] => PATH: ${options?.path}");
    // 1.在进行任何网络请求的时候, 可以添加一个loading显示

    // 2.很多页面的访问必须要求携带Token,那么就可以在这里判断是有Token
    options.headers.addAll({'token': Application.token});
    // 3.对参数进行一些处理,比如序列化处理等

    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    print('====== ====== ====== onResponse ====== ====== ======'); // 拦截了响应
    print("RESPONSE[${response?.statusCode}] => PATH: ${response?.request?.path}");
    // if (response.statusCode == HttpStatus.ok) {}
    switch (response.statusCode) {
      case HttpStatus.ok: // 200
        // return new Future.value(JsonConvert.fromJsonAsT<T>(response.data));
        break;
      case HttpStatus.switchingProtocols: //101
      // break;
      case HttpStatus.unauthorized: //401
        print("------token 失效:1.单点登录, 2.长时间未登录");
        Application.toast("token失效, 请重新登录");
        break;
    }

    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    print('====== ====== ====== onError ====== ====== ======'); // 拦截了错误
    print("ERROR[${err?.response?.statusCode}] => PATH: ${err?.request?.path}");

    return super.onError(err);
  }
}
