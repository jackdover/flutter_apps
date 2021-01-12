import 'package:flutter/material.dart';
import '../api/data_factory.dart';
import '../api/response/personinfo.dart';
import '../components/ak_future_builder.dart';
import '../pages/profile/orderlist_page.dart';
import '../pages/profile/user_card.dart';
import '../pages/setting_page.dart';

import 'profile/user_header.dart';
import 'profile/user_order.dart';
import 'profile/user_wallet.dart';

class MinePage extends StatefulWidget {
  static const String routeName = "/MinePage";

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> with TickerProviderStateMixin {
  static const String TAG = "MinePage";

  double appBarOpacity = 0;

  var _mFuture;

  @override
  void initState() {
    super.initState();
    print("${TAG}------initState------");

    ///用一个变量 _mFuture 来保存_gerData()的结果，以避免不必要的ui重绘
    _mFuture = getUserInfo();
  }

  /*
   * 获取用户信息
   */
  Future<PersonInfoEntity> getUserInfo() async {
   return await DataFactory.data_Entity(AssetJsonName.personinfoBusiness) as PersonInfoEntity;
  }

  @override
  Widget build(BuildContext context) {
    print("${TAG}------build------");

    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: Stack(
        children: <Widget>[
          AKFutureBuilder(
            future: _mFuture,
            akbuilder: (BuildContext context, AsyncSnapshot<PersonInfoEntity> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  // 请求失败，显示错误
                  return Container(child: Text("Error: ${snapshot.error}"));
                } else {
                  // 请求成功，显示数据
                  return NotificationListener<ScrollNotification>(
                    onNotification: (ScrollNotification notification) {
                      print(notification.metrics.pixels);
                      var scrollY = notification.metrics.pixels;
                      if (scrollY > 0) {
                        var opacity = scrollY / 80;
                        setState(() {
                          appBarOpacity = opacity <= 1 ? opacity : 1;
                        });
                      } else if (scrollY < 0) {
                        setState(() {
                          appBarOpacity = 0;
                        });
                      }
                      return false;
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          UserHeader(
                            userInfo: snapshot.data.floors[0]?.data,
                          ),
                          UserOrder(
                            orderList: snapshot.data.floors[0]?.data?.orderList,
                            onTap: () {
                              // Navigator.of(context).pushNamed('/order_list');
                              var arguments={};
                              Navigator.of(context).pushNamed(OrderlistPage.routeName,arguments: arguments);
                            },
                          ),
                          UserWallet(
                            walletList:
                            snapshot.data.floors[0]?.data?.walletList,
                          ),
                          UserCard(
                              title: snapshot.data.floors[1]?.data?.extendInfo
                                  ?.header?.labelName,
                              tools: snapshot.data.floors[1]?.data?.nodes),
                          UserCard(
                            title: snapshot.data.floors[0]?.data?.extendInfo
                                ?.header?.labelName,
                            tools: snapshot.data.floors[0]?.data?.nodes,
                          ),
                        ],
                      ),
                    ),
                  );
                }
              } else {
                // 请求未结束，显示loading
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          Positioned(
            top: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            child: AppBar(
              title: Text(
                appBarOpacity >= 0.7 ? "我的" : "",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              centerTitle: true,
              leading: appBarOpacity >= 0.7
                  ? Container(
                      padding: EdgeInsets.all(12),
                      child: ClipOval(
                        child: Image.network(
                          "https://storage.360buyimg.com/i.imageUpload/494dccc6eedad0a1b1a631353834363036343330373230_big.jpg",
                        ),
                      ),
                    )
                  : Container(),
              actions: <Widget>[
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "设置",
                      style: TextStyle(
                        color: appBarOpacity == 1 ? Colors.black : Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/settings');
                    Navigator.of(context).pushNamed(SettingPage.routeName);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: appBarOpacity == 1 ? Colors.black : Colors.white,
                    size: 20,
                  ),
                  onPressed: null,
                )
              ],
              backgroundColor: Color.fromRGBO(255, 255, 255, appBarOpacity),
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }
}
