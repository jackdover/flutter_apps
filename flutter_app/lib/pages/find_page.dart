import 'package:flutter/material.dart';
import '../api/api_config.dart';
import '../api/api_manager.dart';
import '../api/data_factory.dart';
import '../api/response/HomeGoods.dart';
import '../utils/toast_utils.dart';
import '../pages/tabbar_tabview_nestscrollview.dart';

class FindPage extends StatefulWidget {
  static const String routeName = "/FindPage";

  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  static const String TAG = "FindPage";

  bool loading = true;

  HomeGoods _homeGoods = null;

  @override
  void initState() {
    super.initState();
    print("${TAG}------initState------");

    _initData();
  }

  void _initData() async {
    loading = true;
    await Future.wait(<Future>[
      _getRecommendItemList(),
    ]);
    loading = false;
  }

  /// 获取商品推荐列表
  Future _getRecommendItemList() async {
    // var response = await AKApi().AKDio.post(ApiConfig.recommendItemList);
    // var data = response.data;
    // HomeGoods homeGoods = HomeGoods.fromJson(data);
    // print("FindPage==============================");
    // print(data.runtimeType);
    //
    // print("FindPage==============================");
    // print(homeGoods.runtimeType);



    HomeGoods homeGoods=  await DataFactory.data_Entity(AssetJsonName.recommendItemList ) as HomeGoods;

    this.setState(() {
      this._homeGoods = homeGoods;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("${TAG}------build------");
    return Scaffold(
      appBar: AppBar(
        title: Text("发现"),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : TabLayoutNestWidget(homeGoods: _homeGoods),
    );
  }
}
