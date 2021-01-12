import 'package:flutter/material.dart';
import '../../api/response/HomeGoods.dart';
import '../../components/third/ak_flow_gridview.dart';
import '../../pages/detail/goods_info_page.dart';
import '../../utils/toast_utils.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// 瀑布流 GridView
// 封装使用三方 flutter_staggered_grid_view: ^0.3.2
class FlowGridView extends StatefulWidget {
  HomeGoods homeGoods;
  final bool isSliver;

  FlowGridView({Key key, @required this.homeGoods, this.isSliver = false}) : super(key: key);

  @override
  _FlowGridViewState createState() => _FlowGridViewState();
}

class _FlowGridViewState extends State<FlowGridView> {
  var _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      print("FlowGridView_scrollController.offset:${_scrollController.offset}");
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_scrollController != null) {
      _scrollController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isSliver) {
      return _buildSliverFlowGridViewAuto(widget.homeGoods);
    } else {
      return Container(
        child: _buildFlowGridViewAuto(widget.homeGoods),
        // child: _buildStaggeredGridViewAuto(),
        // child: _buildStaggeredGridViewKnown(),
      );
    }
  }

  Widget _buildFlowGridViewAuto(HomeGoods homeGoods) {
    var _itemBuilder = (context, index) {
      //_gridListGoods
      String wname = homeGoods.wareInfoList[index].wname;
      String imageurl = homeGoods.wareInfoList[index].imageurl;
      String couponInfo = homeGoods.wareInfoList[index].couponInfo; //"领券满399减150"
      String good = homeGoods.wareInfoList[index].good; // 好评率
      String jdPrice = homeGoods.wareInfoList[index].jdPrice;
      String wareId = homeGoods.wareInfoList[index].wareId;
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
              //todo 共享元素跳转
              /*Container(
                child: Hero(
                  tag: wareId,
                  child: Material(
                    color: Colors.transparent,
                    child: Image.network((index == 0 || index == 3)
                        ? "https://img.300hu.com/4c1f7a6atransbjngwcloud1oss/34dfd0a5251377255140880385/imageSampleSnapshot/1574669045_12981449.100_6008.jpg"
                        : imageurl),
                  ),
                ),
              ),*/
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
          ToastUtils.show(wareId);
          print("------wareId$wareId");
          var arguments = {"wareId": wareId};
          Navigator.of(context).pushNamed(GoodsInfoPage.routeName, arguments: arguments);
        },
      );
    };
    // return GridView.builder(
    //   //Grid
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2, //Grid按两列显示
    //     mainAxisSpacing: 10.0,
    //     crossAxisSpacing: 10.0,
    //     childAspectRatio: 1 / 1.75,
    //   ),
    //   itemCount: homeGoods.wareInfoList.length,
    //   itemBuilder: _itemBuilder,
    // );

    // return StaggeredGridView.countBuilder(
    //     // controller: _scrollController,
    //     crossAxisCount: 2,
    //     crossAxisSpacing: 8,
    //     mainAxisSpacing: 8,
    //     itemCount: widget.homeGoods.wareInfoList.length,
    //     itemBuilder: _itemBuilder,
    //     staggeredTileBuilder: (index) => StaggeredTile.fit(1));

    return AKFlowGridView.countBuilder(
      controller: _scrollController,
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      itemCount: widget.homeGoods.wareInfoList.length,
      itemBuilder: _itemBuilder,
    );
  }

  Widget _buildSliverFlowGridViewAuto(HomeGoods homeGoods) {
    var _itemBuilder = (context, index) {
      //_gridListGoods
      String wname = homeGoods.wareInfoList[index].wname;
      String imageurl = homeGoods.wareInfoList[index].imageurl;
      String couponInfo = homeGoods.wareInfoList[index].couponInfo; //"领券满399减150"
      String good = homeGoods.wareInfoList[index].good; // 好评率
      String jdPrice = homeGoods.wareInfoList[index].jdPrice;
      String wareId = homeGoods.wareInfoList[index].wareId;
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
              // Container(child: Image.network(imageurl)),
              //todo 共享元素跳转
              Container(
                child: Hero(
                  tag: "home_flow_$wareId",
                  child: Material(
                    color: Colors.transparent,
                    child: Image.network((index == -1 /*0*/)
                        ? "https://img.300hu.com/4c1f7a6atransbjngwcloud1oss/34dfd0a5251377255140880385/imageSampleSnapshot/1574669045_12981449.100_6008.jpg"
                        : imageurl),
                  ),
                ),
              ),
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
          ToastUtils.show(wareId);
          print("------wareId$wareId");
          var arguments = {"wareId": wareId};
          Navigator.of(context).pushNamed(GoodsInfoPage.routeName, arguments: arguments);
        },
      );
    };
    // return GridView.builder(
    //   //Grid
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2, //Grid按两列显示
    //     mainAxisSpacing: 10.0,
    //     crossAxisSpacing: 10.0,
    //     childAspectRatio: 1 / 1.75,
    //   ),
    //   itemCount: homeGoods.wareInfoList.length,
    //   itemBuilder: _itemBuilder,
    // );

    return SliverStaggeredGrid.countBuilder(
        // controller: _scrollController,
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        itemCount: widget.homeGoods.wareInfoList.length,
        itemBuilder: _itemBuilder,
        staggeredTileBuilder: (index) => StaggeredTile.fit(1));

    // return AKFlowGridView.countBuilder(
    //   controller: _scrollController,
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 8,
    //   mainAxisSpacing: 8,
    //   itemCount: widget.homeGoods.wareInfoList.length,
    //   itemBuilder: _itemBuilder,
    // );
  }

  // 建议使用1
  // 1. 无法确定GridView中的item的高度，所以无法设置宽高比，这种情况可以使用StaggeredGridView来自动适配高度
  StaggeredGridView _buildStaggeredGridViewAuto() {
    return StaggeredGridView.countBuilder(
        // shrinkWrap: true, // 默认false, 改为true滑动时会有乱变bug. 其实false时bug照样存在, 重启启动apk, 好像就没有了
        controller: _scrollController,
        crossAxisCount: 4,
        crossAxisSpacing: 4,
        mainAxisSpacing: 10,
        itemCount: widget.homeGoods.wareInfoList.length,
        itemBuilder: (context, index) {
          return Container(
              color: Colors.green,
              height: 16.0 * (index + 1),
              child: new Center(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text(
                    '$index',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ));
        },
        staggeredTileBuilder: (index) => StaggeredTile.fit(2));
  }

  // 2. 瀑布流样式 : 不理想(还是要设置宽高比)
  StaggeredGridView _buildStaggeredGridViewKnown() {
    return StaggeredGridView.countBuilder(
        shrinkWrap: true,
        controller: _scrollController,
        crossAxisCount: 4,
        crossAxisSpacing: 4,
        mainAxisSpacing: 10,
        itemCount: widget.homeGoods.wareInfoList.length,
        itemBuilder: (context, index) {
          return Container(
              color: Colors.green,
              child: new Center(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Text('$index'),
                ),
              ));
        },
        staggeredTileBuilder: (index) => StaggeredTile.count(2, index == 0 ? 0.5 : 3));
  }
}

/// 应用场景
/// 1. 无法确定GridView中的item的高度，所以无法设置宽高比，这种情况可以使用StaggeredGridView来自动适配高度
/// 2. 瀑布流样式
/// 3. 配合RefreshIndicator实现下拉刷新
///
/// 使用说明
/// StaggeredTile的使用
// StaggeredTile.count：固定纵轴和主轴上的数量
// StaggeredTile.extent：纵轴上的数量和主轴上的最大范围
// StaggeredTile.fit：纵轴上的数量
//
// StaggeredGridView有几列是由crossAxisCount除以StaggeredTile设置上的纵轴的数量的结果。
