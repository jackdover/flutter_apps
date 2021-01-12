import 'package:flutter/material.dart';

import 'order_card.dart';

class OrderlistPage extends StatefulWidget {

  static const String routeName = "/OrderlistPage";

  final Map arguments;

  const OrderlistPage({Key key, this.arguments}) : super(key: key); // va

  @override
  _OrderlistPageState createState() => _OrderlistPageState();
}

class _OrderlistPageState extends State<OrderlistPage>  with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TabController tabBarController =
    TabController(length: 5, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text('我的订单'),
        elevation: 0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Icon(Icons.view_quilt, color: Colors.black),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Icon(Icons.search, color: Colors.black),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Icon(Icons.message, color: Colors.black),
          ),
        ],
        centerTitle: true,
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicator: UnderlineTabIndicator(
            insets: EdgeInsets.only(bottom: 8),
            borderSide: BorderSide(color: Colors.red, width: 3),
          ),
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          controller: tabBarController,
          tabs: <Tab>[
            ...['全部', '待付款', '待收货', '已完成', '已取消']
                .map((item) => Tab(text: item))
                .toList(),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabBarController,
        children: <Widget>[
          ...List.generate(
            5,
                (index) => ListView.builder(
              itemBuilder: (context, index) => OrderCard(),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
