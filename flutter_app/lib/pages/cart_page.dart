import 'package:flutter/material.dart';
import '../api/data_factory.dart';
import '../api/response/shopcart_entity.dart';
import '../utils/toast_utils.dart';

import 'cart/cart_content.dart';

class CartPage extends StatefulWidget {
  static const String routeName = "/CartPage";

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with TickerProviderStateMixin {
  static const String TAG = "CartPage";

  int _tabIndex = 0;

  bool loading = true;

  ShopCartEntity _mShopCartEntity = null;
  // var _mDataJson;

  @override
  void initState() {
    super.initState();
    print("${TAG}------initState------");

    _initData();
  }

  void _initData() async {
    loading = true;
    await Future.wait(<Future>[
      _getShopcartList(),
    ]);
    loading = false;
  }

  /// 获取购物车列表
  Future _getShopcartList() async {
    ShopCartEntity dataEntity = await DataFactory.data_Entity(AssetJsonName.shopcart) as ShopCartEntity;
    // var dataJson = await DataFactory.dataJsonFromAssetName(AssetJsonName.shopcart);

    this.setState(() {
      this._mShopCartEntity = dataEntity;
      // this._mDataJson = dataJson;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("${TAG}------build------");
    return Scaffold(
      // backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        title: Text(
          "购物车",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        actions: [
          Container(
            // height: 40,
            width: 48,
            margin: EdgeInsets.only(right: 12),
            // color: Colors.red,
            child: Center(
              child: Text(
                "编辑",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 40,
                  padding: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius(Radius.circular(20)),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: TabBar(
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: "PingFang",
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelStyle: TextStyle(
                      color: Colors.red,
                      fontFamily: "PingFang",
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.red,
                    controller: TabController(length: 4, initialIndex: _tabIndex, vsync: this),
                    tabs: <Widget>[
                      ...["全部(2)", "降价(0)", "常卖(0)", "分类"].map((item) {
                        return Text(item);
                      }).toList()
                    ],
                    onTap: (index) {
                      setState(() {
                        _tabIndex = index;
                      });
                      ToastUtils.show("$index");
                    },
                  ),
                ),
                Expanded(
                  child: buildCartContent(_tabIndex),
                ),
              ],
            ),
    );
  }

  Widget buildCartContent(int tabIndex) {
    // _tabIndex //todo 实际中根据tab角标加载不同的数据
    // _mDataJson
    // return CartContent(data:_mDataJson["cartInfo"]["vendors"]);
    return CartContent(data:_mShopCartEntity.cartInfo.vendors);
  }
}
