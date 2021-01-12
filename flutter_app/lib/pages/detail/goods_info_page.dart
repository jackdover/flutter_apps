import 'package:city_pickers/city_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import '../../api/api_config.dart';
import '../../api/api_manager.dart';
import '../../api/data_factory.dart';
import '../../api/response/detail/ItemInfoResponseEntity.dart';
import '../../components/ak_behavior_scroll_configuration.dart';
import '../../components/ak_pot.dart';
import '../../components/ak_tabbar.dart';
import '../../components/ak_visibility.dart';
import '../../components/common/error_content_widget.dart';
import '../../components/common/error_page.dart';
import '../../components/ak_future_builder.dart';
import '../../components/third/ak_video_player.dart';
import '../../components/third/ak_webview.dart';
import '../../components/third/ak_webview_page.dart';
import '../../config/values/constant.dart';
import '../../pages/detail/big_img_photoview_page.dart';
import '../../pages/detail/big_videoimg_photoview_page.dart';
import '../../pages/detail/expansion_list_item_page.dart';
import '../../pages/detail/goods_bottom.dart';
import '../../pages/detail/item_sku_dialog.dart';
import '../../utils/screen_utils.dart';
import '../../utils/toast_utils.dart';

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class GoodsInfoPage extends StatefulWidget {
  static const String routeName = "/ItemInfoPage";

  final Map arguments; // var arguments = {"wareId": wareId};

  GoodsInfoPage({Key key, this.arguments}) : super(key: key);

  @override
  _GoodsInfoPageState createState() => _GoodsInfoPageState();
}

class _GoodsInfoPageState extends State<GoodsInfoPage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  PageController _pageController;

  TabController _tabController;
  int _currPageIndex = 0;

  final List<String> _tabNameList = ["商品", "评价", "详情", "推荐"];

  ItemInfoResponseEntity _itemInfo;
  List _goodBannerList = [];
  String _defaultAddress = '';

  Duration _initPosition;

  double _appbarOpacity = 0.0;

  var _mFuture;
  String itemId;

  @override
  bool get wantKeepAlive => true; // 页面状态保持

  @override
  void initState() {
    super.initState();
    print("ItemInfoPage------initState-----");

    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 1,
      keepPage: true,
    );

    _tabController = new TabController(
      vsync: this,
      length: _tabNameList.length,
    );
    _tabController.addListener(() {
      print(_tabController.index);

      setState(() {
        print("TabLayoutNestWidget------setState-----");
      });
    });

    // 获取跳转传递参数
    itemId = widget.arguments != null ? widget.arguments['wareId'] : null;

    ///用一个变量 _mFuture 来保存_gerData()的结果，以避免不必要的ui重绘
    // _mFuture = _initItemInfo();
    if (itemId != null) {
      // _mFuture = _initItemInfo(itemId);
      _mFuture = _initData(itemId);
    }
  }

  _initData(String itemId) async {
    _itemInfo = await DataFactory.data_Entity(AssetJsonName.wareBusiness, params: {"wareId": "wareId"})
        as ItemInfoResponseEntity;
    await Future.wait(<Future>[
      // _getDelay(),
      _initItemInfo(itemId),
    ]);
  }

  _getDelay() async {
    await Future.delayed(Duration(seconds: 5));
  }

  @override
  void dispose() {
    super.dispose();
    if (_tabController != null) {
      _tabController.dispose();
    }
  }

  Future _initItemInfo(String itemId) async {
    // var response = await AKApi().AKDio.post(ApiConfig.wareBusiness, data: {
    //   "wareId": itemId,
    // });
    // var data = response.data;
    // print("------itemInfo:${data}");
    //
    // this._itemInfo = ItemInfoResponseEntity.fromJson(data);
    _itemInfo =
        await DataFactory.data_Entity(AssetJsonName.wareBusiness, params: {"wareId": itemId}) as ItemInfoResponseEntity;
    // 商品轮播图
    List<WareImage> wareImageList = _itemInfo.floors[0].data.wareImage;

    _goodBannerList.clear();
    if (_itemInfo.floors[0].data.videoControl != null &&
        _itemInfo.floors[0].data.videoControl.masterVideo != null &&
        _itemInfo.floors[0].data.videoControl.masterVideo.playUrl != null) {
      _goodBannerList.add(_itemInfo.floors[0].data.videoControl.masterVideo);
    }
    _goodBannerList.addAll(wareImageList);

    _defaultAddress =
        "${_itemInfo?.floors[0]?.data?.defaultAddr?.provinceName}${_itemInfo?.floors[0]?.data?.defaultAddr?.cityName}${_itemInfo?.floors[0]?.data?.defaultAddr?.countyName}";

    // this.setState(() {
    //   this._itemInfo = ItemInfoResponseEntity.fromJson(data);
    //   print("------_itemInfo:${_itemInfo.floors.length}");
    // });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print("ItemInfoPage------build------------ ");
    // timeDilation = 5.0; //在调试时，可以使用 timeDilation 属性来减缓页面转场过渡 //todo
    // 0. 固定在顶部的APPbar : 默认中间tab透明不显示, 伴随图片滑动逐渐显示
    // 1. 固定在底部的加入购物车
    // 2. 商品图片,轮播,第一个可以是视频
    // 3. 商品名称
    // 4. 评价
    // 5. 详情: 详情滑动到顶部或者超过顶部时,显示top按钮,
    // 6. 推荐

    return Scaffold(
      // 封装通用加载过程 AKFutureBuilder
      body: AKFutureBuilder(
        akbuilder: _createFutureContent,
        future: _mFuture, // 用户定义的需要异步执行的代码，类型为Future<String>或者null的变量或函数
      ),

      // 1. 固定在底部的加入购物车
      bottomNavigationBar: Container(
        color: Colors.white,
        height: ScreenUtils.getBottomNavigationBarHeight(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // 店铺按钮
            InkWell(
              child: Container(
                // color: Colors.red,
                width: 56,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.store,
                      size: 24,
                      color: Colors.red,
                    ),
                    Text(
                      "店铺",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                ToastUtils.show("点击了店铺");
              },
            ),
            // 客服按钮
            InkWell(
              child: Container(
                // color: Colors.blue,
                width: 56,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      size: 24,
                      color: Colors.black,
                    ),
                    Text(
                      "客服",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                ToastUtils.show("点击了客服");
              },
            ),
            // 购物车按钮
            InkWell(
              child: Container(
                // color: Colors.green,
                width: 56,
                child: Stack(
                  children: [
                    Container(
                      // color: Colors.red,
                      width: 56,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            size: 24,
                            color: Colors.black,
                          ),
                          Text(
                            "购物车",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 14,
                        width: 24,
                        margin: EdgeInsets.all(2),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.red),
                        ),
                        child: Text(
                          "99+",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                ToastUtils.show("点击了购物车");
              },
            ),
            // 加入购物车按钮
            InkWell(
              child: Container(
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  // color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    //渐变位置
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.orange, Colors.orange[300]],
                  ),
                ),
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "加入购物车",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: () {
                ToastUtils.show("点击了加入购物车");
              },
            ),
            // 立即购买按钮
            InkWell(
              child: Container(
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    //渐变位置
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.red, Colors.orange[700]],
                  ),
                ),
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Text(
                  "立即购买",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: () {
                ToastUtils.show("点击了立即购买");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _createFutureContent(BuildContext context, AsyncSnapshot snapshot) {
    return Stack(
      // 内容部分
      children: [
        NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            if (notification.metrics.axis == Axis.vertical) {
              var scrollY = notification.metrics.pixels;
              print("ScrollNotification---scrollY=$scrollY");
              if (scrollY > 0) {
                var opacity = scrollY / 240;
                setState(() {
                  _appbarOpacity = opacity <= 1 ? opacity : 1;
                });
              } else if (scrollY < 0) {
                setState(() {
                  _appbarOpacity = 0;
                });
              }
              int tabIndex = _tabController.index;
              print("ScrollNotification---tabIndex=$tabIndex");
              if (scrollY > 11520 && tabIndex != 3) {
                _tabController.animateTo(3);
              } else if (scrollY > 2200 && tabIndex != 2) {
                _tabController.animateTo(2);
              } else if (scrollY > 1455 && tabIndex != 1) {
                _tabController.animateTo(1);
              } else if(scrollY > 0 && tabIndex != 0){
                _tabController.animateTo(0);
              }
              // 0
              // 1455
              // 2200
              //11520
            }
            return false;
          },
          child: Container(
            height: ScreenUtils.getScreenHeight(context),
            // color: Colors.green,

            // SingleChildScrollView 如果超出屏幕太多, 会有性能问题,
            child: /*NestedScrollView*/ CustomScrollView(
              slivers: [
                // 商品图片,商品价格,商品名称
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 商品图片
                      Container(
                        child: _buildImgPhotoView(),
                      ),
                      /*//todo 共享元素跳转
                    Container(
                      child: Hero(
                        tag: itemId,
                        child: Material(
                          color: Colors.transparent,
                          child: Image.network(
                            "https://m.360buyimg.com/mobilecms/s714x714_jfs/t1/124890/19/4269/114748/5edb4dd5E51dc2178/2ccdea6db9bd6dda.jpg!q70.dpg.webp",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        // 禁用反向动画
                        flightShuttleBuilder: (context, anim, direction, fromContext, toContext) {
                          final Hero toHero = toContext.widget;
                          if (direction == HeroFlightDirection.pop) {
                            return FadeTransition(
                              opacity: AlwaysStoppedAnimation(0),
                              child: toHero.child,
                            );
                          } else {
                            return toHero.child;
                          }
                        },
                      ),
                    ),

                    // todo  test

                    Container(
                      height: 200,
                      child: AKVideoPlayer(
                        videoUrl: _itemInfo.floors[0].data.videoControl.masterVideo.playUrl,
                        // videoHeight: 100,
                        // videoWidth: 200,
                        // containerHeight: 200,
                        // containerWidth: 200,
                        // alignment: Alignment.bottomRight,
                      ),
                    ),
    */

                      // 商品价格
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(12.0),
                                child: RichText(
                                  text: TextSpan(
                                      text: " ", //JSON.floors[0].data.ad.adLink
                                      style: TextStyle(color: Colors.red, fontSize: 14),
                                      children: [
                                        TextSpan(
                                          text: "￥ ", //JSON.floors[0].data.ad.adLink
                                          style:
                                              TextStyle(color: Colors.red, fontSize: 14, fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                            text: "${_itemInfo.floors[0].data.priceInfo.jprice}  ",
                                            style: TextStyle(
                                                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold)),
                                        TextSpan(
                                          text: " ￥ ${_itemInfo.floors[0].data.priceInfo.originPrice} ",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12, decoration: TextDecoration.lineThrough),
                                        ),
                                        TextSpan(
                                            text: " 【${_itemInfo.floors[0].data.priceInfo.saveMoney}】",
                                            style: TextStyle(color: Colors.black, fontSize: 13)),
                                      ]),
                                ),
                              ),
                            ),
                            /*Container(
                                margin: const EdgeInsets.only(right: 12.0),
                                child: Image.network(
                                  _itemInfo.floors[0].data.priceIcon.jiangJia,
                                  width: 24,
                                  height: 24,
                                )),
                            Container(
                                margin: const EdgeInsets.only(right: 12.0),
                                child: Image.network(
                                  _itemInfo.floors[0].data.priceIcon.kanJia,
                                  width: 24,
                                  height: 24,
                                )),*/
                            Container(
                              child: Row(children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.notifications,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "降价通知",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 16, 0),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        "关注",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),

                      // 秒杀预告
                      Container(
                        height: 20,
                        padding: EdgeInsets.fromLTRB(16, 0, 10, 0),
                        color: Colors.white,
                        child: Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(2, 1, 2, 1),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.red,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(2)),
                              ),
                              child: Text(
                                "秒杀预告",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 8,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                              child: Text(
                                "3月14日00:00 秒杀价¥4499.00",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Row(children: <Widget>[
                                Icon(
                                  Icons.alarm,
                                  size: 12,
                                ),
                                Text(
                                  "提醒我",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 11,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),

                      // 商品名称
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 4, 10, 0),
                        color: Colors.white,
                        child: Text(
                          _itemInfo.floors[0].data.wareInfo.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // 广告语, 规格
                SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 广告语
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: RichText(
                            text: TextSpan(
                                text: _itemInfo.floors[0].data.ad.adword, //JSON.floors[0].data.ad.adLink
                                style: TextStyle(color: Colors.grey, fontSize: 13),
                                children: [
                                  /*TextSpan(
                                    text: "《***用户协议》",
                                    style: TextStyle(
                                      color: Styles.rgb_color_FFF36E22,
                                      fontSize: Styles.textsize_13,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                                TextSpan(
                                    text: "和 ",
                                    style: TextStyle(
                                        color: Styles.rgb_color_666,
                                        fontSize: Styles.textsize_13)),
                                TextSpan(
                                    text: "《隐私政策》",
                                    style: TextStyle(
                                        color: Colors.red, ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        ToastUtils.show("点击了查看");
                                      }),*/
                                  TextSpan(
                                      text: _itemInfo.floors[0].data.ad.adLinkContent,
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          String jumpWebViewUrl = _itemInfo.floors[0].data.ad.adLink;
                                          ToastUtils.show("点击了查看");
                                        }),
                                ]),
                          ),
                        ),

                        Divider(),
                        // 规格
                        Container(
                          width: double.infinity,
                          height: 108,
                          // color: Colors.red,
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  _itemInfo.floors[0].data.title,
                                  style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _itemInfo.floors[0].data.cccKernel.length,
                                  itemBuilder: (context, index) {
                                    // _itemInfo.floors[0].data.title
                                    // _itemInfo.floors[0].data.CccKernel[3].icon

                                    String icon = _itemInfo.floors[0].data.cccKernel[index].icon;
                                    String paramName = _itemInfo.floors[0].data.cccKernel[index].paramName;
                                    String paramValue = _itemInfo.floors[0].data.cccKernel[index].paramValue;

                                    return Container(
                                      width: 80,
                                      // color: Colors.blue,
                                      margin: EdgeInsets.only(left: 4, right: 8),
                                      child: Column(
                                        children: [
                                          Container(
                                            // height: 48,
                                            // width: 48,
                                            margin: EdgeInsets.all(12),

                                            child: Image.network(
                                              icon,
                                              height: 24,
                                              width: 24,
                                            ),
                                          ),
                                          Text(
                                            paramName,
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            paramValue,
                                            style: TextStyle(color: Colors.black, fontSize: 11),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // 放心购
                SliverToBoxAdapter(
                  child: InkWell(
                    child: Container(
                      margin: EdgeInsets.only(top: 12.0),
                      height: 64,
                      // width: ScreenUtils.getScreenWidth(context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: NetworkImage(_itemInfo.floors[0].data.selectInfo.gdImage), fit: BoxFit.fitWidth),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 32.0),
                          ),
                          Image.network(
                            _itemInfo.floors[0].data.selectInfo.dgImage,
                            height: 12,
                            // width: 99,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                            child: Container(
                              width: 3,
                              height: 20,
                              color: Color(0xFFDA3E27),
                            ),
                          ),
                          Expanded(
                            child: Image.network(
                              _itemInfo.floors[0].data.selectInfo.imgUrl,
                              // height: 48,
                              // width: 64,
                            ),
                          ),
                          Text(
                            // "${_itemInfo.floors[0].data.selectInfo.inTitle}",
                            "查看详情 >",
                            style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      _buildBottomDialog();
                    },
                  ),
                ),

                // 优惠赠品, 活动
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(top: 12.0),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        // 优惠
                        InkWell(
                          child: Container(
                            // height: 56,
                            // width: ScreenUtils.getScreenWidth(context),

                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "优惠",
                                        style:
                                            TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
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
                                          colors: [Colors.red[100], Colors.red[50]],
                                        ),
                                      ),
                                      child: Text(
                                        "赠品", //
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.red,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                    ),
                                    Expanded(
                                      child: Text(
                                        _itemInfo.floors[0].data.preferentialGuide.promotion.gift[0].value,
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Icon(
                                      Icons.more_horiz,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: AKVisibility(
                                        visible: VisibilityFlag.invisible,
                                        child: Text(
                                          "优惠",
                                          style:
                                              TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
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
                                          colors: [Colors.red[100], Colors.red[50]],
                                        ),
                                      ),
                                      child: Text(
                                        //限购
                                        _itemInfo.floors[0].data.preferentialGuide.promotion.activity[0].text,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.red,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                    ),
                                    Expanded(
                                      child: Text(
                                        _itemInfo.floors[0].data.preferentialGuide.promotion.activity[0].value,
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: AKVisibility(
                                        visible: VisibilityFlag.invisible,
                                        child: Text(
                                          "优惠",
                                          style:
                                              TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
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
                                          colors: [Colors.red[100], Colors.red[50]],
                                        ),
                                      ),
                                      child: Text(
                                        //满减
                                        _itemInfo.floors[0].data.preferentialGuide.promotion.activity[1].text,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.red,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                    ),
                                    Expanded(
                                      child: Text(
                                        _itemInfo.floors[0].data.preferentialGuide.promotion.activity[1].value,
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: AKVisibility(
                                        visible: VisibilityFlag.invisible,
                                        child: Text(
                                          "优惠",
                                          style:
                                              TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
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
                                          colors: [Colors.red[100], Colors.red[50]],
                                        ),
                                      ),
                                      child: Text(
                                        //白条
                                        "白条",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.red,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                    ),
                                    Expanded(
                                      child: Text(
                                        _itemInfo.floors[0].data.preferentialGuide.whiteBarInfo.marketingText,
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 56.0),
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                                InkWell(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "套装",
                                          style:
                                              TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 12.0),
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
                                            colors: [Colors.red[100], Colors.red[50]],
                                          ),
                                        ),
                                        child: Text(
                                          "优惠套装", //
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.red,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 12.0),
                                      ),
                                      Expanded(
                                        child: Text(
                                          _itemInfo.floors[0].data.suit.suitNumText,
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                        color: Colors.black,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    _buildBottomDialogTaozhuang();
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 56.0),
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            _buildBottomDialogYouhui();
                          },
                        ),

                        // 活动
                        InkWell(
                          child: Container(
                            // height: 56,
                            // width: ScreenUtils.getScreenWidth(context),

                            child: Column(
                              children: [
                                /*  Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "活动",
                                        style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                                      decoration: BoxDecoration(
                                        // color: Colors.orange[100],
                                        borderRadius: BorderRadius.circular(2),
                                        border: Border.all(color: Colors.blue),
                                      ),
                                      child: Text(
                                        "高价回收", //
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.blue,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                                      decoration: BoxDecoration(
                                        // color: Colors.orange[100],
                                        borderRadius: BorderRadius.circular(2),
                                        border: Border.all(color: Colors.red),
                                      ),
                                      child: Text(
                                        "家庭号", //
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.red,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(),
                                    ),
                                    Icon(
                                      Icons.more_horiz,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ],
                                ),*/
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "活动",
                                        style:
                                            TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                    ),
                                    Container(
                                      child: Image.network(
                                        _itemInfo.floors[0].data.actions.bizActs[0].icon,
                                        height: 13,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                    ),
                                    Container(
                                      child: Image.network(
                                        _itemInfo.floors[0].data.actions.bizActs[1].icon,
                                        height: 13,
                                      ),
                                    ),
                                    Expanded(
                                      child: SizedBox(),
                                    ),
                                    Icon(
                                      Icons.more_horiz,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            _buildBottomDialogHuodong();
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                // 已选, 地址, 运费
                SliverToBoxAdapter(
                  child: Card(
                    margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                        children: <Widget>[
                          // 已选
                          ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "已选",
                                style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                            title: Text(
                              _itemInfo?.floors[0]?.data?.colorSizeInfo?.colorSize?.map((item) {
                                return item?.buttons[0]?.text;
                              })?.join(","),
                              style: TextStyle(fontSize: 13),
                            ),
                            trailing: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                              size: 24,
                            ),
                            onTap: () {
                              showCupertinoModalPopup(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      color: Colors.white,
                                    ),
                                    padding: EdgeInsets.all(15),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height * 0.8,
                                      child: Material(
                                        color: Colors.white,
                                        child: ItemSkuDialog(itemData: _itemInfo?.floors[0]?.data),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),

                          // 送至
                          ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "送至",
                                style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                            title: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 16,
                                ),
                                Text(
                                  _defaultAddress,
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(
                                  _itemInfo?.floors[0]?.data?.stock,
                                  style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                              size: 24,
                            ),
                            onTap: () async {
                              //todo  地址选择器
                              var res = await CityPickers.showCityPicker(context: context);
                              print(res);

                              setState(() {
                                _defaultAddress = "${res?.provinceName}${res?.cityName ?? ''}${res?.areaName ?? ''}";
                              });
                            },
                          ),

                          // 运费
                          ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "运费",
                                style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                            title: Row(
                              children: [
                                Text(
                                  _itemInfo?.floors[0]?.data?.fare,
                                  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),

                          // 条件
                          Container(
                            width: double.infinity,
                            child: Wrap(
                              children: [
                                ..._itemInfo?.floors[0]?.data?.serviceInfo?.basic?.iconList.map((item) {
                                  return Container(
                                    padding: const EdgeInsets.only(left: 20.0, bottom: 6),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image.network(
                                          item?.imageUrl,
                                          width: 16,
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          item?.text,
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // 排行榜
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(top: 12.0),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: InkWell(
                      child: Container(
                        // height: 56,
                        // width: ScreenUtils.getScreenWidth(context),

                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.insert_chart,
                                color: Colors.red,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                            ),
                            Text(
                              "排行榜", //
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                            ),
                            Expanded(
                              child: Text(
                                _itemInfo.floors[0].data.rankName,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.black,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        _buildBottomDialogYouhui();
                      },
                    ),
                  ),
                ),

                // 评价 todo
                SliverToBoxAdapter(),
                // 问答 todo
                SliverToBoxAdapter(),
                // 手机靓号, 保障服务
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        _itemInfo.floors[0].data.bizList[0].icon,
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          _itemInfo.floors[0].data.bizList[0].title,
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  _itemInfo.floors[0].data.bizList[0].desc,
                                  style: TextStyle(
                                    fontSize: 13,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              var arguments = {
                                "url": _itemInfo.floors[0].data.bizList[0].url,
                                "title": _itemInfo.floors[0].data.bizList[0].title
                              };
                              // AKWebViewPage(url:'https://flutter.cn',title: "我是web标题",)
                              Navigator.of(context).pushNamed(AKWebViewPage.routeName, arguments: arguments);
                            },
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 16,
                          color: Colors.grey,
                        ),
                        Expanded(
                          child: InkWell(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        _itemInfo.floors[0].data.bizList[1].icon,
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          _itemInfo.floors[0].data.bizList[1].title,
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  _itemInfo.floors[0].data.bizList[1].desc,
                                  style: TextStyle(
                                    fontSize: 13,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              var arguments = {
                                "url": _itemInfo.floors[0].data.bizList[1].url,
                                "title": _itemInfo.floors[0].data.bizList[1].title
                              };
                              // AKWebViewPage(url:'https://flutter.cn',title: "我是web标题",)
                              Navigator.of(context).pushNamed(AKWebViewPage.routeName, arguments: arguments);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // 店铺
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              _itemInfo.floors[0].data.shopInfo.shop.squareLogo,
                              width: 64,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      _itemInfo.floors[0].data.shopInfo.shop.name,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              "店铺星级", // "店铺星级"
                                              style: TextStyle(
                                                fontSize: 11,
                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            // todo 店铺星级
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 12.0),
                                        child: Text(
                                          "${_itemInfo.floors[0].data.shopInfo.shop.followCount}人关注",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      // 评价
                                      Text(
                                        "${_itemInfo.floors[0].data.shopInfo.shop.evaluateTxt}", // 评价
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          "${_itemInfo.floors[0].data.shopInfo.shop.evaluateScore} ${_itemInfo.floors[0].data.shopInfo.shop.evaluateGrade}",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),

                                      // 物流
                                      Padding(
                                        padding: const EdgeInsets.only(left: 12.0),
                                        child: Text(
                                          "${_itemInfo.floors[0].data.shopInfo.shop.logisticsText}", // 物流
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          "${_itemInfo.floors[0].data.shopInfo.shop.logisticsScore} ${_itemInfo.floors[0].data.shopInfo.shop.logisticsGrade}",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),

                                      // 售后
                                      Padding(
                                        padding: const EdgeInsets.only(left: 12.0),
                                        child: Text(
                                          "${_itemInfo.floors[0].data.shopInfo.shop.afterSaleTxt}", // 售后
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: Text(
                                          "${_itemInfo.floors[0].data.shopInfo.shop.afterSaleScore} ${_itemInfo.floors[0].data.shopInfo.shop.afterSaleGrade}",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          children: [
                            Text(""), //
                            ..._itemInfo.floors[0].data.shopInfo.shop.promotions.map((item) {
                              return Container(
                                // alignment: Alignment.centerLeft,
                                // height: 32,
                                padding: EdgeInsets.fromLTRB(8, 4, 4, 4),
                                margin: EdgeInsets.only(right: 8, top: 4, bottom: 4),
                                decoration: BoxDecoration(
                                  // color: Colors.orange[100],
                                  borderRadius: BorderRadius.circular(32),
                                  gradient: LinearGradient(
                                    //渐变位置
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    // stops: [0.0, 1.0],         //[渐变起始点, 渐变结束点]
                                    //渐变颜色[始点颜色, 结束颜色]
                                    colors: [Colors.pink[50], Colors.orange[50]],
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      item.name,
                                      style: TextStyle(
                                        fontSize: 11,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.black,
                                      size: 14,
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ..._itemInfo.floors[0].data.shopInfo.shop.hotcates.map((item) {
                              String imgUrl = item.imgPath;
                              String imgText = item.cname;
                              return InkWell(
                                child: Container(
                                  width: 80,
                                  // margin: EdgeInsets.only(right: 8),
                                  // color: Colors.red,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.grey[50],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        // padding: const EdgeInsets.all(12.0),
                                        // color: Colors.red,
                                        child: Image.network(
                                          imgUrl,
                                          height: 80,
                                          // width: 80,
                                        ),
                                      ),
                                      Text(
                                        imgText,
                                        style: TextStyle(
                                          fontSize: 11,
                                          // color: Colors.white,
                                          // fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  ToastUtils.show("服务端数据为空");
                                },
                              );
                            }),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              // alignment: Alignment.centerLeft,
                              height: 32,
                              padding: EdgeInsets.fromLTRB(24, 4, 24, 4),
                              margin: EdgeInsets.only(right: 16, top: 12, bottom: 4),
                              decoration: BoxDecoration(
                                // color: Colors.orange[100],
                                borderRadius: BorderRadius.circular(32),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.network(
                                    _itemInfo.floors[0].data.bizList[0].icon,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "联系客服",
                                    style: TextStyle(
                                      fontSize: 11,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // alignment: Alignment.centerLeft,
                              height: 32,
                              padding: EdgeInsets.fromLTRB(24, 4, 24, 4),
                              margin: EdgeInsets.only(right: 1, top: 12, bottom: 4),
                              decoration: BoxDecoration(
                                // color: Colors.orange[100],
                                borderRadius: BorderRadius.circular(32),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.network(
                                    _itemInfo.floors[0].data.bizList[1].icon,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "进店逛逛",
                                    style: TextStyle(
                                      fontSize: 11,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // 热门配件
                SliverToBoxAdapter(
                  child: Container(
                    // margin: EdgeInsets.all(12),
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 热门配件 标题
                        InkWell(
                          child: Row(
                            children: [
                              Container(
                                width: 3,
                                height: 14,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  gradient: LinearGradient(
                                    //渐变位置
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.red, Colors.yellow],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  _itemInfo.floors[0].data.text1, // "热门配件"
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.network(
                                  _itemInfo.floors[0].data.tailIcon,
                                  height: 12,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            var arguments = {
                              "url": _itemInfo.floors[0].data.jumpUrl,
                              "title": _itemInfo.floors[0].data.text1
                            };
                            // AKWebViewPage(url:'https://flutter.cn',title: "我是web标题",)
                            Navigator.of(context).pushNamed(AKWebViewPage.routeName, arguments: arguments);
                          },
                        ),
                        // 热门配件
                        Container(
                          width: double.infinity,
                          height: 108,
                          // color: Colors.red,
                          padding: EdgeInsets.only(top: 8),
                          child: ScrollConfiguration(
                            behavior: AKOverScrollBehavior(),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _itemInfo.floors[0].data.imgInfo.length + 1,
                              itemBuilder: (context, index) {
                                if (index == _itemInfo.floors[0].data.imgInfo.length) {
                                  // 最后一个
                                  // String rightCorner = data['floorList'][7]['rightCorner']; //发现更多频道
                                  // String rightCornerImg = data['floorList'][7]['rightCornerImg'];
                                  return InkWell(
                                    child: Container(
                                      // width:60,
                                      margin: EdgeInsets.only(right: 8),

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 20,
                                            padding: const EdgeInsets.all(6.0),
                                            child: Text(
                                              _itemInfo.floors[0].data.text2,
                                              style: TextStyle(
                                                fontSize: 11,
                                                // color: Colors.white,
                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Image.network(
                                              _itemInfo.floors[0].data.tailIcon,
                                              height: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      var arguments = {
                                        "url": _itemInfo.floors[0].data.jumpUrl,
                                        "title": _itemInfo.floors[0].data.text1
                                      };
                                      // AKWebViewPage(url:'https://flutter.cn',title: "我是web标题",)
                                      Navigator.of(context).pushNamed(AKWebViewPage.routeName, arguments: arguments);
                                    },
                                  );
                                } else {
                                  String imgUrl = _itemInfo.floors[0].data.imgInfo[index].imgUrl;
                                  String imgText = _itemInfo.floors[0].data.imgInfo[index].imgText;
                                  String imgJumpUrl = _itemInfo.floors[0].data.imgInfo[index].imgJumpUrl;

                                  return InkWell(
                                    child: Container(
                                      width: 80,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Colors.grey[50],
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            // padding: const EdgeInsets.all(12.0),
                                            // color: Colors.red,
                                            child: Image.network(
                                              imgUrl,
                                              height: 72,
                                              width: 72,
                                            ),
                                          ),
                                          Text(
                                            imgText,
                                            style: TextStyle(
                                              fontSize: 11,
                                              // color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      var arguments = {"url": imgJumpUrl, "title": imgText};
                                      // AKWebViewPage(url:'https://flutter.cn',title: "我是web标题",)
                                      Navigator.of(context).pushNamed(AKWebViewPage.routeName, arguments: arguments);
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // 为您推荐配件
                SliverToBoxAdapter(
                  child: Container(
                    // margin: EdgeInsets.all(12),
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 为您推荐配件 标题
                        InkWell(
                          child: Row(
                            children: [
                              Container(
                                width: 3,
                                height: 14,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                  gradient: LinearGradient(
                                    //渐变位置
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.red, Colors.yellow],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  _itemInfo.floors[0].data.recommendToast.toastExplain, // "为您推荐配件"
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            var arguments = {
                              "url": _itemInfo.floors[0].data.jumpUrl,
                              "title": _itemInfo.floors[0].data.text1
                            };
                            // AKWebViewPage(url:'https://flutter.cn',title: "我是web标题",)
                            Navigator.of(context).pushNamed(AKWebViewPage.routeName, arguments: arguments);
                          },
                        ),
                        // 为您推荐配件
                        Container(
                          width: double.infinity,
                          height: 90,
                          // color: Colors.red,
                          padding: EdgeInsets.only(top: 8),
                          child: ScrollConfiguration(
                            behavior: AKOverScrollBehavior(),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _itemInfo.floors[0].data.recommendToast.recommends.length,
                              itemBuilder: (context, index) {
                                String imgUrl = _itemInfo.floors[0].data.recommendToast.recommends[index].image;
                                String imgJumpUrl = _itemInfo.floors[0].data.recommendToast.recommends[index].url;

                                return InkWell(
                                  child: Container(
                                    width: 80,
                                    margin: EdgeInsets.only(right: 8),
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.grey[50],
                                    ),
                                    child: Image.network(
                                      imgUrl,
                                      // height: 42,
                                      // width: 42,
                                    ),
                                  ),
                                  onTap: () {
                                    var arguments = {
                                      "url": imgJumpUrl,
                                      "title": _itemInfo.floors[0].data.recommendToast.toastExplain
                                    };
                                    // AKWebViewPage(url:'https://flutter.cn',title: "我是web标题",)
                                    Navigator.of(context).pushNamed(AKWebViewPage.routeName, arguments: arguments);
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // 搜索,推荐,排行榜 todo
                SliverToBoxAdapter(
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.network(
                      _itemInfo.floors[0].data.shopInfo.shop.shopImage,
                      // height: 42,
                      // width: 42,
                    ),
                  ),
                ),

                // 详情 todo
                SliverToBoxAdapter(
                  child: AKWebView(url: 'https://in.m.jd.com/product/detail/100009177424.html'),
                ),
              ],
            ),
          ),
        ),
        // 0. 固定在顶部的AppBar : 默认中间tab透明不显示, 伴随图片滑动逐渐显示
        Container(
          height: ScreenUtils.getStatusBarHeight(context) + ScreenUtils.getAppBarHeight(context),
          child: AppBar(
            // leadingWidth: 60,
            leading: InkWell(
              child: Container(
                // height: 36,
                // width: 36,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: _buildAppbarTitle(),
            ),
            centerTitle: true,
            // shadowColor: Colors.red,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            actions: [
              // 分享 按钮
              InkWell(
                child: Container(
                  height: 36,
                  width: 36,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  ToastUtils.show("点击了: 分享");
                },
              ),
              // 更多 按钮
              InkWell(
                child: Container(
                  width: 46,
                  padding: EdgeInsets.only(right: 10),
                  // color: Colors.blue,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 36,
                          width: 36,
                          // margin: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: AKPot(
                          margin: EdgeInsets.only(top: 12, right: 2),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  ToastUtils.show("点击了: 更多");
                },
              ),
            ],
          ),
        ),

        // 1. 固定在底部的加入购物车: 放在 bottomNavigationBar位置
        // Align(
        //   alignment: Alignment.bottomCenter,
        //   child: Container(
        //     color: Colors.blue,
        //     child: Text("底部"),
        //   ),
        // ),
      ],
    );
  }

  Widget _buildAppbarTitle() {
    // return Text("nei");
    return Opacity(
      opacity: _appbarOpacity,
      child: AKTabBar(
        controller: this._tabController,
        isScrollable: true,
        tabs: _buildTabs(),
        indicatorColor: Colors.red,
        // indicatorColor: Colors.transparent,
        indicatorWeight: 3.0,
        indicatorPadding: EdgeInsets.zero,
        // 指示线宽度跟文字宽度一样
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Colors.red,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        labelPadding: EdgeInsets.fromLTRB(2, 0, 2, 0),
        unselectedLabelColor: Colors.black,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
        // dragStartBehavior = DragStartBehavior.start,
        // mouseCursor,
        onTap: (index) {
          ToastUtils.show("点击了AKTabBar:$index");
        },
        // physics,
      ),
    );
  }

  List<Widget> _buildTabs() {
    List<Widget> tempList = [];
    for (int i = 0; i < _tabNameList.length; i++) {
      var tabName = _tabNameList[i];
      tempList.add(AKTab(
        tabHeight: 40,
        child: Container(
          // width: 36,
          // height: 32,
          alignment: Alignment.center,
          // color: Colors.yellow,
          // padding: EdgeInsets.fromLTRB(6, 6, 6, 2),
          child: Text(
            tabName,
            style: TextStyle(
              fontSize: 13,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ));
    }
    return tempList;
  }

  void _buildBottomDialog() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            // height: ScreenUtils.getScreenHeight(context) / 2 > 500 ? 500 : ScreenUtils.getScreenHeight(context) / 2,
            child: Column(
              // crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          _itemInfo.floors[0].data.selectInfo.inTitle,
                          style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      iconSize: 24.0,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Colors.red,
                      // highlightColor: Colors.red,
                      // splashColor: Colors.red,
                      splashRadius: 1,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Image.network(
                          _itemInfo.floors[0].data.trustworthy.iconInDialog,
                          height: 12,
                          // width: 99,
                        ),
                      ),
                    ),
                    Text(
                      "了解详情 >",
                      style: TextStyle(color: Colors.grey, fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                  ],
                ),
                Divider(),
                Expanded(
                  child: Container(
                    // height: ScreenUtils.getScreenHeight(context) / 2 > 400 ? 400 : ScreenUtils.getScreenHeight(context) / 2,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: _itemInfo.floors[0].data.trustworthy.iconListOne.length,
                      itemBuilder: (context, index) {
                        String imageUrl = _itemInfo.floors[0].data.trustworthy.iconListOne[index].imageUrl;
                        String text = _itemInfo.floors[0].data.trustworthy.iconListOne[index].text;
                        String tip = _itemInfo.floors[0].data.trustworthy.iconListOne[index].tip;

                        return Container(
                          // color: Colors.blue,
                          // height: 80,
                          padding: EdgeInsets.fromLTRB(12, 6, 12, 12),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    imageUrl,
                                    height: 20,
                                    // width: 99,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: Text(
                                      text,
                                      style: TextStyle(color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(
                                  top: 6,
                                ),
                                child: Text(
                                  tip,
                                  style: TextStyle(color: Colors.black, fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void _buildBottomDialogTaozhuang() {
    var arguments = {
      "suit": _itemInfo.floors[0].data.suit,
    };
    Navigator.of(context).pushNamed(ExpansionListItemPage.routeName, arguments: arguments);
  }

  void _buildBottomDialogYouhui() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            // height: ScreenUtils.getScreenHeight(context) / 2 > 500 ? 500 : ScreenUtils.getScreenHeight(context) / 2,
            child: Column(
              // crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "优惠",
                          style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      iconSize: 24.0,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Colors.red,
                      // highlightColor: Colors.red,
                      // splashColor: Colors.red,
                      splashRadius: 1,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(12, 8, 0, 12),
                  child: Text(
                    "促销",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    // padding: EdgeInsets.all(12),
                    // color: Colors.blue,
                    // height: ScreenUtils.getScreenHeight(context) / 2 > 400 ? 400 : ScreenUtils.getScreenHeight(context) / 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(4, 1, 4, 1),
                          decoration: BoxDecoration(
                            // color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(2),
                            gradient: LinearGradient(
                              //渐变位置
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.red[100], Colors.red[50]],
                            ),
                          ),
                          child: Text(
                            "赠品", //
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: ListView.builder(
                            // physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            // JSON.floors[0].data.preferentialGuide.promotion.gift[0].value
                            itemCount: _itemInfo.floors[0].data.preferentialGuide.promotion.gift.length,
                            itemBuilder: (context, index) {
                              String value = _itemInfo.floors[0].data.preferentialGuide.promotion.gift[index].value;
                              String num = _itemInfo.floors[0].data.preferentialGuide.promotion.gift[index].num;

                              return Container(
                                // color: Colors.blue,
                                // height: 80,
                                // padding: EdgeInsets.fromLTRB(12, 6, 12, 12),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            value,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ],
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(
                                        top: 6,
                                      ),
                                      child: Text(
                                        "X $num",
                                        style: TextStyle(color: Colors.black, fontSize: 11),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void _buildBottomDialogHuodong() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            // height: ScreenUtils.getScreenHeight(context) / 2 > 500 ? 500 : ScreenUtils.getScreenHeight(context) / 2,
            child: Column(
              // crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "活动",
                          style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      iconSize: 24.0,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Colors.red,
                      // highlightColor: Colors.red,
                      // splashColor: Colors.red,
                      splashRadius: 1,
                    ),
                  ],
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Container(
                          margin: EdgeInsets.only(top: 12),
                          width: 60,
                          child: Image.network(
                            _itemInfo.floors[0].data.actions.bizActs[0].icon,
                            height: 13,
                          ),
                        ),
                        title: Text(
                          _itemInfo.floors[0].data.actions.bizActs[0].desc,
                          style: TextStyle(fontSize: 11),
                        ),
                        subtitle: Text(
                          _itemInfo.floors[0].data.actions.bizActs[0].desc,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          width: 60,
                          margin: EdgeInsets.only(top: 12),
                          child: Image.network(
                            _itemInfo.floors[0].data.actions.bizActs[1].icon,
                            height: 13,
                          ),
                        ),
                        title: Text(
                          _itemInfo.floors[0].data.actions.bizActs[1].desc,
                          style: TextStyle(fontSize: 11),
                        ),
                        subtitle: Text(
                          _itemInfo.floors[0].data.actions.bizActs[1].desc,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  void pageViewControllerTo(int pageIndex) {
    /*//动画的方式滚动到指定的页面
    _pageController.animateToPage(
      //子Widget的索引
      0,
      //动画曲线
      curve: Curves.ease,
      //滚动时间
      duration: Duration(milliseconds: 200),
    );

    //动画的方式滚动到指定的位置
    _pageController.animateTo(
      100,
      //动画曲线
      curve: Curves.ease,
      //滚动时间
      duration: Duration(milliseconds: 200),
    );

    //无动画切换到指定的页面
    _pageController.jumpToPage(0);
    //无动画 切换到指定的位置
    _pageController.jumpTo(100);*/

    //无动画切换到指定的页面
    if (_pageController != null) {
      _pageController.jumpToPage(pageIndex);
    }
  }

  Widget _buildImgPhotoView() {
    return Container(
        height: ScreenUtils.getScreenWidth(context),
        child: Stack(
          children: [
            Container(
              child: PageView.builder(
                itemCount: _goodBannerList.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    MasterVideo mVideo = _goodBannerList[index] as MasterVideo;
                    String imgUrl = mVideo.imageUrl;
                    String playUrl = mVideo.playUrl;
                    return Container(
                      color: Colors.white,
                      alignment: Alignment.bottomCenter,
                      child: Hero(
                        //todo 共享元素跳转
                        // tag: itemId,
                        tag: "home_flow_$itemId",
                        child: Material(
                          color: Colors.transparent,
                          child: AKVideoPlayer(
                            videoUrl: playUrl,
                            // autoPlay: true,
                            initPosition: _initPosition,
                            onTapCallback: (position) {
                              ToastUtils.show("正在播放");

                              // 传递给大图界面的参数
                              var arguments2 = {
                                "_pageIndex": _pageController.page.toInt(),
                                "imageList": _goodBannerList
                              };

                              Navigator.of(context)
                                  .pushNamed(BigVideoImagePhotoViewPage.routeName, arguments: arguments2)
                                  .then((result) {
                                // 接收返回时传递的数据: 类似 startActivityForResult 的 onRresult
                                print("backResult=${result.runtimeType}");
                                print("backResult=${result.toString()}");
                                Map map = result as Map;
                                int backIndex = map['_backPageIndex'];
                                print("backIndex=${backIndex}");

                                Duration videoPosition;
                                if (backIndex == 0) {
                                  videoPosition = map['_videoPosition'];
                                  print("videoPosition=${videoPosition}");
                                }

                                setState(() {
                                  pageViewControllerTo(backIndex < _goodBannerList.length ? backIndex : 0);

                                  if (videoPosition != null) {
                                    _initPosition = videoPosition;
                                  }
                                });
                              });
                            },
                          ),
                          /*Image.network(
                            imgUrl ??=
                                "https://m.360buyimg.com/mobilecms/s714x714_jfs/t1/124890/19/4269/114748/5edb4dd5E51dc2178/2ccdea6db9bd6dda.jpg!q70.dpg.webp",
                            // fit: BoxFit.cover,
                            fit: BoxFit.fitWidth,
                          ),*/
                        ),
                        // 禁用反向动画
                        flightShuttleBuilder: (context, anim, direction, fromContext, toContext) {
                          final Hero toHero = toContext.widget;
                          if (direction == HeroFlightDirection.pop) {
                            return FadeTransition(
                              opacity: AlwaysStoppedAnimation(0),
                              child: toHero.child,
                            );
                          } else {
                            return toHero.child;
                          }
                        },
                      ),
                    );
                  } else {
                    WareImage mWareImage = _goodBannerList[index] as WareImage;
                    String smallUrl = mWareImage.small;
                    return InkWell(
                      child: Container(
                        color: Colors.white,
                        child:
                            /*Image.network(
                          smallUrl,
                          fit: BoxFit.cover,
                        ),*/
                            Hero(
                          tag: "${smallUrl}:$index",
                          child: Material(
                            color: Colors.transparent,
                            child: Image.network(
                              smallUrl ??=
                                  "https://m.360buyimg.com/mobilecms/s714x714_jfs/t1/124890/19/4269/114748/5edb4dd5E51dc2178/2ccdea6db9bd6dda.jpg!q70.dpg.webp",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        ToastUtils.show("点击了 $index");

                        // 传递给大图界面的参数
                        var arguments2 = {"_pageIndex": _pageController.page.toInt(), "imageList": _goodBannerList};

                        Navigator.of(context)
                            .pushNamed(BigVideoImagePhotoViewPage.routeName, arguments: arguments2)
                            .then((result) {
                          // 接收返回时传递的数据: 类似 startActivityForResult 的 onRresult
                          print("backIndex=${result.runtimeType}");
                          print("backIndex=${result.toString()}");
                          Map map = result as Map;
                          int backIndex = map['_backPageIndex'];
                          print("backIndex=${backIndex}");

                          setState(() {
                            pageViewControllerTo(backIndex < _goodBannerList.length ? backIndex : 0);
                          });
                        });
                      },
                    );
                  }
                },
                controller: _pageController,
                onPageChanged: (index) {
                  ToastUtils.show("滑到了 $index");
                  setState(() {
                    _currPageIndex = index;
                  });
                },
              ),
            ),
            // 图片角标
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 64,
                height: 30,
                margin: EdgeInsets.only(bottom: 6, right: 12),
                padding: EdgeInsets.only(bottom: 6),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${_currPageIndex + 1}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "/",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "${_goodBannerList.length}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
