import 'dart:math';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'response/HomeGoods.dart';
import 'response/category/categorylist_entity.dart';

import 'response/category/subbanner_entity.dart';
import 'response/category/subcategory_entity.dart';
///
import 'response/detail/ItemInfoResponseEntity.dart';

import 'api_config.dart';
import 'api_manager.dart';
import 'response/personinfo.dart';
import 'response/settings_entity.dart';
import 'response/shopcart_entity.dart';
import 'response/welcome_home_entity.dart';

// 使用本地数据 代替网络数据
const bool isLocalData = true;

///
/// 特别注意: 静态方法前面第一个字母是_的, 不能在外部调用
class DataFactory {
  ////// ------ ------ ------ 单例 begin
  static DataFactory _singleton;

  //工厂构造函数
  factory DataFactory() {
    if (_singleton == null) {
      _singleton = DataFactory._internal();
    }
    return _singleton;
  }

  //构造函数私有化，防止被误创建
  DataFactory._internal() {}

  ////// ------ ------ ------ 单例 end

  ////// ------ ------ ------ json map bean 转换 begin

  // 方式1
  void json2map() {
    var map = {
      "name": "zhangsan",
      "email": "123@qq.com",
      "age": 1
    };

    //转成字符串
    String name = json.encode(map);
    print(name);

    //解析字符串
    Map<String, dynamic> user = json.decode(name);
    print("姓名：${user['name']}");
    print("邮箱：${user['email']}");
    print("年龄：${user['age']}");
  }

  // 方式2 : 内置json创建model方式解析
//  先建立model，
//  class User {
//  String name;
//  String email;
//  int age;
//
//  User(this.name, this.email, this.age) {}
//
//  User.fromJson(Map<String, dynamic>json)
//      :name=json["name"],
//  email = json["email"],
//  age = json["age"];
//
//  Map<String, dynamic> toJson() {
//  return {
//  "name": name,
//  "email": email,
//  "age": age
//  };
//  }
//  }
//  然后可以使用了，
//  var map = {
//  "name": "zhangsan",
//  "email": "123@qq.com",
//  "age": 1
//  };
//
//  var user = User.fromJson(map);
//  print("name:${user.name}");
//
//  var userMap = User("lisi", "321@qq.com", 3).toJson();
//  for (var key in userMap.keys) {
//  print("${key} : ${userMap[key]}");
//  }
//  这种是比较常用的用来解析复杂的json

  void json2model() {

  }

  ////// ------ ------ ------ json map bean 转换 end


  // ------ ------ ------ 模拟延迟
  static Future getDelay() async {
    await Future.delayed(Duration(milliseconds: Random().nextInt(50))).then((value) {});
  }

  // ------ ------ ------ 加载本地json资源
  static Future<String> loadAssetsJson(String jsonRes) async {
    // var resource = await rootBundle.loadString('assets/json_localdata/welcomeHome.json');
    var resource = await rootBundle.loadString(jsonRes);
    return resource;
    // var result = json.decode(resource);
    // return result;

    // 如果是实体
    // AddressCodeModel result = AddressCodeModel.fromJson(json.decode(resource));
    // return result;

    // 如果是list
    // List result = json.decode(resource);
    // List<AddressCodeModel> modelList = [];
    // modelList.addAll(result.map((jsonObj) => AddressCodeModel.fromJson(jsonObj)).toList());
    // return modelList;
  }

  // ------ ------ ------ 加载本地json资源, 并返回简单的解析
  static Future dataJsonFromAssets(String jsonResPath) async {
    // var resource = await rootBundle.loadString('assets/json_localdata/welcomeHome.json');
    var resource = await rootBundle.loadString(jsonResPath);
    var jsonStr = await json.decode(resource);
    return jsonStr;
  }

  // ------ ------ ------ 加载本地json资源, 并返回简单的解析, 根据文件名字
  static Future dataJsonFromAssetName(String jsonName) async {
    var resource = await rootBundle.loadString('assets/json_localdata/${jsonName}.json');
    var jsonStr = await json.decode(resource);
    return jsonStr;
  }

  // ------ ------ ------ 服务数据
  static Future<WelcomeHomeEntity> _postWelcomeHome() async {
    var response = await AKApi().AKDio.post(ApiConfig.welcomeHome);
    var data = response.data;
    return WelcomeHomeEntity.fromJson(data);
  }

  // ------ ------ ------ 本地数据
  static Future<WelcomeHomeEntity> _localWelcomeHome() async {
    var jsonStr = await dataJsonFromAssets("assets/json_localdata/welcomeHome.json");
    return WelcomeHomeEntity.fromJson(jsonStr);
  }

  // ------ ------ ------ 聚合数据
  static Future<WelcomeHomeEntity> data_WelcomeHome() async {
    try {
      if (isLocalData) {
        await getDelay();
        return await _localWelcomeHome();
      }
      return await _postWelcomeHome();
    } catch (e) {
      // 同步执行代码中的异常和异步执行代码的异常都会被捕获
      return await _localWelcomeHome();
    } finally {}
  }

  ////// ------ ------ ------ 封装 begin

  // ------ ------ ------ 服务数据
  static Future _serviceData(String jsonName, Map params) async {
    switch (jsonName) {
      case AssetJsonName.welcomeHome:
        var response = await AKApi().AKDio.post(ApiConfig.welcomeHome, data: params);
        return WelcomeHomeEntity.fromJson(response.data);
        break;
      case AssetJsonName.wareBusiness:
        var response = await AKApi().AKDio.post(ApiConfig.wareBusiness, data: params);
        return ItemInfoResponseEntity.fromJson(response.data);
        break;
      case AssetJsonName.recommendItemList:
        var response = await AKApi().AKDio.post(ApiConfig.recommendItemList, data: params);
        return HomeGoods.fromJson(response.data);
        break;
      case AssetJsonName.MasterCategory:
        var response = await AKApi().AKDio.post(ApiConfig.MasterCategory, data: params);
        return CategoryListEntity.fromJson(response.data);
        break;
      case AssetJsonName.subcategoryList:
        var response = await AKApi().AKDio.post(ApiConfig.subcategoryList, data: params);
        return SubCategoryEntity.fromJson(response.data);
        break;
      case AssetJsonName.subCategoryBannerList:
        var response = await AKApi().AKDio.post(ApiConfig.subCategoryBannerList, data: params);
        return SubBannerEntity.fromJson(response.data);
        break;
      case AssetJsonName.personinfoBusiness:
        var response = await AKApi().AKDio.post(ApiConfig.personinfoBusiness, data: params);
        return PersonInfoEntity.fromJson(response.data);
        break;
      case AssetJsonName.shopcart:
        var response = await AKApi().AKDio.post(ApiConfig.shopcart, data: params);
        return ShopCartEntity.fromJson(response.data);
        break;
      case AssetJsonName.settings:
        var response = await AKApi().AKDio.post(ApiConfig.settings, data: params);
        return SettingsEntity.fromJson(response.data);
        break;

      default:
        return null;
        break;
    }
  }

  // ------ ------ ------ 本地数据
  static Future _localData(String jsonName) async {
    var jsonStr = await dataJsonFromAssets('assets/json_localdata/${jsonName}.json');
    switch (jsonName) {
      case AssetJsonName.welcomeHome:
        return WelcomeHomeEntity.fromJson(jsonStr);
        break;
      case AssetJsonName.wareBusiness:
        return ItemInfoResponseEntity.fromJson(jsonStr);
        break;
      case AssetJsonName.recommendItemList:
        return HomeGoods.fromJson(jsonStr);
        break;
      case AssetJsonName.MasterCategory:
        return CategoryListEntity.fromJson(jsonStr);
        break;
      case AssetJsonName.subcategoryList:
        return SubCategoryEntity.fromJson(jsonStr);
        break;
      case AssetJsonName.subCategoryBannerList:
        return SubBannerEntity.fromJson(jsonStr);
        break;
      case AssetJsonName.personinfoBusiness:
        return PersonInfoEntity.fromJson(jsonStr);
        break;
      case AssetJsonName.shopcart:
        return ShopCartEntity.fromJson(jsonStr);
        break;
      case AssetJsonName.settings:
        return SettingsEntity.fromJson(jsonStr);
        break;

      default:
        return null;
        break;
    }
  }

  // ------ ------ ------ 聚合数据
  /// 使用时需 as 强转
  /// 如: ItemInfoResponseEntity _itemInfo=  await DataFactory.data_Entity(AssetJsonName.wareBusiness, params:{"wareId":"wareId"}) as ItemInfoResponseEntity;
  static Future data_Entity(String jsonName, {Map params = null}) async {
    try {
      if (isLocalData) {
        await getDelay();
        return await _localData(jsonName);
      }
      return await _serviceData(jsonName, params);
    } catch (e) {
      // 同步执行代码中的异常和异步执行代码的异常都会被捕获
      return await _localData(jsonName);
    } finally {}
  }



////// ------ ------ ------ 封装 end
}

class AssetJsonName {
  static const String welcomeHome = "welcomeHome";
  static const String wareBusiness = "wareBusiness";
  static const String recommendItemList = "recommendItemList";
  static const String MasterCategory = "MasterCategory";
  static const String subcategoryList = "subcategoryList";
  static const String subCategoryBannerList = "subCategoryBannerList";
  static const String personinfoBusiness = "personinfoBusiness";
  static const String shopcart = "shopcart";
  static const String settings = "settings";
// - assets/json_localdata/welcomeHome.json
// - assets/json_localdata/wareBusiness.json
// - assets/json_localdata/recommendItemList.json
// - assets/json_localdata/MasterCategory.json
// - assets/json_localdata/subcategoryList.json
// - assets/json_localdata/subCategoryBannerList.json
// - assets/json_localdata/personinfoBusiness.json
// - assets/json_localdata/shopcart.json
// - assets/json_localdata/settings.json

// static const String welcomeHome = 'client.action?functionId=welcomeHome';
// static const String wareBusiness = 'client.action?functionId=wareBusiness';
// static const String recommendItemList = 'client.action?functionId=uniformRecommend';
// static const String MasterCategory = 'client.action?functionId=entranceCatalog';
// static const String subcategoryList = 'client.action?functionId=newSubCatalog';
// static const String subCategoryBannerList = 'client.action?functionId=getCmsPromotionsListByCatelogyID';

}
