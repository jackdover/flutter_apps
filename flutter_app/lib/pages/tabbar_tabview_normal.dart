
import 'package:flutter/material.dart';
import '../api/response/HomeGoods.dart';
import '../utils/screen_utils.dart';

class TabLayoutWidget extends StatefulWidget {
  HomeGoods homeGoods;

  TabLayoutWidget({Key key, @required this.homeGoods}) : super(key: key);

  @override
  _TabLayoutWidgetState createState() => _TabLayoutWidgetState();
}

class _TabLayoutWidgetState extends State<TabLayoutWidget> with SingleTickerProviderStateMixin {
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
        print("TabLayoutWidget------setState-----");
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
    return _buildColumn(context);
  }

  Widget _buildColumn(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TabBar(
                controller: this._tabController,
                // isScrollable: true,
                isScrollable: widget.homeGoods.tabs.length > 4,
                tabs: _buildTabs(widget.homeGoods),
                indicatorColor: Colors.red,
                indicatorWeight: 4.0,
                indicatorPadding: EdgeInsets.zero,
                // indicator:,
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
          ],
        ),
        Container(
          height: ScreenUtils.getScreenHeight(context) * 0.9,
          // height: 600,
          child: TabBarView(
            controller: this._tabController,
            children: _buildTabViews(widget.homeGoods),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildTabViews(HomeGoods homeGoods) {
    return homeGoods.tabs.map((item) {
      return _buildNormalGridView(homeGoods);
    }).toList();
  }

  GridView _buildNormalGridView(HomeGoods homeGoods) {
    return GridView.builder(
      //Grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //Grid按两列显示
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1 / 1.75,
      ),
      itemCount: homeGoods.wareInfoList.length,
      itemBuilder: (context, index) {
        //_gridListGoods
        String wname = homeGoods.wareInfoList[index].wname;
        String imageurl = homeGoods.wareInfoList[index].imageurl;
        String couponInfo = homeGoods.wareInfoList[index].couponInfo; //"领券满399减150"
        String good = homeGoods.wareInfoList[index].good; // 好评率
        String jdPrice = homeGoods.wareInfoList[index].jdPrice;
        String clickUrl = homeGoods.wareInfoList[index].clickUrl;
        String label = "京东物流";

        //创建子widget
        return Container(
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
                      "$label    ${wname}",
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
                          "好评率 $good", // "好评率"
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
                    Container(
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
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<Widget> _buildTabs(HomeGoods homeGoods) {

    // 方式1 .map.toList()
    return homeGoods.tabs.map((item) {
      return Tab(
        // text:item.title,
        // icon:Icon(Icons.add),
        // iconMargin : const EdgeInsets.only(bottom: 10.0),
        child: Container(
          // height: 120,
          // width: 72,
          // padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            children: [
              Text(
                item.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.subtitle,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              // Icon(Icons.add),//超高报错
            ],
          ),
        ),
      );
    }).toList();

    // 方式2 for循环
    // List<TabsBean> tabs = homeGoods.tabs;
    // List<Widget> tempList = [];
    // for (int i = 0; i < tabs.length; i++) {
    //   tempList.add(Tab(
    //     // text:item.title,
    //     // icon:Icon(Icons.add),
    //     // iconMargin : const EdgeInsets.only(bottom: 10.0),
    //     child: Container(
    //       // height: 120,
    //       // width: 72,
    //       // padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
    //       child: Column(
    //         children: [
    //           Text(
    //             tabs[i].title,
    //             style: TextStyle(
    //               fontSize: 16,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           Text(
    //             tabs[i].subtitle,
    //             style: TextStyle(
    //               fontSize: 13,
    //             ),
    //           ),
    //           // Icon(Icons.add),//超高报错
    //         ],
    //       ),
    //     ),
    //   ));
    // }
    // return tempList;
  }


}
