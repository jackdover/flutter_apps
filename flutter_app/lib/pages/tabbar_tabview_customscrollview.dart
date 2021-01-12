import 'package:flutter/material.dart';
import '../api/response/HomeGoods.dart';
import '../components/ak_tabbar.dart';
import '../components/third/flow_gridview.dart';
import '../config/values/constant.dart';
import '../utils/screen_utils.dart';
import '../utils/toast_utils.dart';

class TabLayoutCustomScrollView extends StatefulWidget {
  HomeGoods homeGoods;

  TabLayoutCustomScrollView({Key key, @required this.homeGoods}) : super(key: key);

  @override
  _TabLayoutCustomScrollViewState createState() => _TabLayoutCustomScrollViewState();
}

class _TabLayoutCustomScrollViewState extends State<TabLayoutCustomScrollView> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: widget.homeGoods.tabs.length,
    );
    _tabController.addListener(() {
      print(_tabController.index);

      setState(() {
        print("TabLayoutCustomScrollView------setState-----");
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_tabController != null) {
      _tabController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    // return _buildNestedScrollView();
    return _buildCustomScrollView();
  }

  Widget _buildCustomScrollView() {
    return Container(
      // height: (products.length / 2 + products.length % 2) * 245,
      // child: CustomScrollView(
      //   physics: NeverScrollableScrollPhysics(),
      //   slivers: [
      //     SliverStaggeredGrid.countBuilder(),
      //   ],
      // ),
      child: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: [],
      ),
    );
  }

  Widget _buildNestedScrollView() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          // SliverAppBar(
          //   expandedHeight: 230.0,
          //   // pinned: true,
          //   flexibleSpace: Padding(
          //     padding: EdgeInsets.symmetric(vertical: 8),
          //     child: Text("我是SliverAppBar\n我是SliverAppBar\n我是SliverAppBar"),
          //   ),
          // ),
          SliverPersistentHeader(
            pinned: true,
            delegate: SliverTabBarDelegate(
              child: AKTabBar(
                controller: this._tabController,
                // isScrollable: true,
                isScrollable: widget.homeGoods.tabs.length > 4,
                tabs: _buildTabs(widget.homeGoods),
                indicatorColor: Colors.red,
                // indicatorColor: Colors.transparent,
                indicatorWeight: 4.0,
                indicatorPadding: EdgeInsets.zero,
                // indicator:BoxDecoration(
                //    // color:,
                //    image:DecorationImage(
                //        image:NetworkImage(Constant.JDImg),
                //        fit:BoxFit.cover,
                //    ),
                //    // border:,
                //    // borderRadius:,
                //    // boxShadow:,
                //    // gradient:,
                //    // backgroundBlendMode:,
                //    // shape : BoxShape.rectangle,
                // ),
                // 指示线宽度跟文字宽度一样
                // indicatorSize: TabBarIndicatorSize.label,
                // 指示线宽度占满空间
                // indicatorSize: TabBarIndicatorSize.tab,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.red,
                // labelStyle:TextStyle(),
                labelPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                unselectedLabelColor: Colors.black,
                // unselectedLabelStyle:,
                // dragStartBehavior = DragStartBehavior.start,
                // mouseCursor,
                onTap: (index) {
                  print("$index");
                },
                // physics,
              ),
            ),
          ),
        ];
      },
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TabBarView(
          controller: this._tabController,
          children: _buildTabViews(widget.homeGoods),
          /*<Widget>[
          RefreshIndicator(
            // onRefresh: (){
            //   print(('onRefresh'));
            // },
            onRefresh: () async {
              print(('onRefresh----begin'));
              await Future.delayed(Duration(seconds: 5));
              print(('onRefresh----end'));
            },
            // child: _buildTabNewsList(_newsKey, _newsList),//todo
          ),
          // _buildTabNewsList(_technologyKey, _technologyList),//todo
        ],*/
        ),
      ),
      // controller:,
      // scrollDirection : Axis.vertical,
      // reverse : false,
      // physics:BouncingScrollPhysics(),
      // dragStartBehavior : DragStartBehavior.start,// 手势识别
      // floatHeaderSlivers: false,
      // clipBehavior: Clip.hardEdge,
    );
  }

  List<Widget> _buildTabViews(HomeGoods homeGoods) {
    // return homeGoods.tabs.map((item) {
    //   return _buildNormalGridView(homeGoods);
    // }).toList();
    List<Widget> tempList = [];
    for (int i = 0; i < homeGoods.tabs.length; i++) {
      if (i == 0) {
        tempList.add(FlowGridView(homeGoods: homeGoods));
      } else {
        tempList.add(_buildNormalGridView(homeGoods));
      }
    }
    return tempList;
  }

  Widget _buildNormalGridView(HomeGoods homeGoods) {
    var _itemBuilder = (context, index) {
      //_gridListGoods
      String wname = homeGoods.wareInfoList[index].wname;
      String imageurl = homeGoods.wareInfoList[index].imageurl;
      String couponInfo = homeGoods.wareInfoList[index].couponInfo; //"领券满399减150"
      String good = homeGoods.wareInfoList[index].good; // 好评率
      String jdPrice = homeGoods.wareInfoList[index].jdPrice;
      String clickUrl = homeGoods.wareInfoList[index].clickUrl;
      String label = "京东物流";

      //创建子widget
      return InkWell(
        child: Container(
          // color: Colors.green,
          padding: EdgeInsets.only(bottom: 10),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              //图片
              Container(child: Image.network(imageurl)),
              // 名称
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Text(
                      "$label    ${index}:${wname}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                      decoration: BoxDecoration(
                        // color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(2),
                        gradient: LinearGradient(
                          //渐变位置
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          // stops: [0.0, 1.0],         //[渐变起始点, 渐变结束点]
                          //渐变颜色[始点颜色, 结束颜色]
                          // colors: [_getRandomDeepColor(), _getRandomColor()],
                          colors: [Colors.orange[100], Colors.orange[50]],
                        ),
                      ),
                      child: Text(
                        label, // "自营"
                        style: TextStyle(
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // couponInfo : 使用没有任何设置的 Container 来控制隐藏(或者空数据的不显示)
              couponInfo == null
                  ? Container()
                  : Container(
                      padding: EdgeInsets.fromLTRB(8, 1, 8, 1),
                      width: double.infinity,
                      // color: Colors.red,
                      child: Wrap(
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                                margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.orange[50],
                                  border: Border.all(color: Colors.red),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Text(
                                  couponInfo, // "领券满399减150"
                                  style: TextStyle(
                                    fontSize: 10,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 8,
                                height: 8,
                                margin: EdgeInsets.only(top: 6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.red),
                                  color: Colors.orange[50],
                                ),
                              ),
                              Container(
                                width: 4,
                                height: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
              // 好评率
              Container(
                width: double.infinity,
                child: Wrap(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 2, 0, 2),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          "好评率 $good", // "自营"
                          style: TextStyle(fontSize: 10, color: Colors.red),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 2, 0, 2),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          "免息", // "自营"
                          style: TextStyle(fontSize: 10, color: Colors.red),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 2, 0, 2),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          "商家包邮", // "自营"
                          style: TextStyle(fontSize: 10, color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // 价格
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text(
                      "￥",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      jdPrice,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(2, 1, 0, 1),
                        decoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(13),
                            topLeft: Radius.circular(13),
                          ),
                        ),
                        child: Text(
                          " 看相似 ",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      onTap: () {
                        ToastUtils.show("看相似");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          ToastUtils.show(wname);
        },
      );
    };
    return GridView.builder(
      //Grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //Grid按两列显示
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1 / 1.75,
      ),
      itemCount: homeGoods.wareInfoList.length,
      itemBuilder: _itemBuilder,
    );
  }

  List<Widget> _buildTabs(HomeGoods homeGoods) {
    // 方式1 .map.toList()
    // return homeGoods.tabs.map((item) {
    //   return AKTab(
    //     // text:item.title,
    //     // icon:Icon(Icons.add),
    //     // iconMargin : const EdgeInsets.only(bottom: 10.0),
    //     tabHeight: 120,
    //     child: Container(
    //       // width: 72,
    //       // color: Colors.green[50],
    //       // padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
    //       child: Column(
    //         children: [
    //           Text(
    //             item.title,
    //             style: TextStyle(
    //               fontSize: 16,
    //               // fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           Text(
    //             item.subtitle,
    //             style: TextStyle(
    //               fontSize: 12,
    //             ),
    //           ),
    //           // Icon(Icons.add),//超高报错
    //         ],
    //       ),
    //     ),
    //   );
    // }).toList();

    // 方式2 for循环
    List<TabsBean> tabs = homeGoods.tabs;

    List<Widget> tempList = [];
    for (int i = 0; i < tabs.length; i++) {
      var item = tabs[i];
      tempList.add(AKTab(
        // text:item.title,
        // icon:Icon(Icons.add),
        // iconMargin : const EdgeInsets.only(bottom: 10.0),
        tabHeight: 56,
        child: Container(
          // width: 72,
          // color: Colors.green[50],
          // padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            children: [
              Text(
                item.title,
                style: TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.subtitle,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              // Icon(Icons.add),//超高报错: 自定义高度: AKTab
              _tabController.index == i
                  ? Container(
                      child: Image.network(
                        Constant.JDImg,
                        width: 40,
                        height: 10,
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ));
    }
    return tempList;
  }
}

class SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final AKTabBar child;

  SliverTabBarDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: this.child,
    );
    // throw UnimplementedError();
  }

  @override
  double get maxExtent => this.child.preferredSize.height /* * 2*/;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
