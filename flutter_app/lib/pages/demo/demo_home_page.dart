import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../api/api_config.dart';
import '../../api/api_manager.dart';
import '../../api/data_factory.dart';
import '../../api/response/HomeGoods.dart';
import '../../api/response/banner_entity.dart';
import 'package:dio/dio.dart';
import '../../api/response/welcome_home_entity.dart';
import '../../components/ak_behavior_scroll_configuration.dart';
import '../../components/ak_tabbar.dart';
import '../../components/auto_play_ad_content.dart';
import '../../components/third/ak_webview_page.dart';
import '../../components/third/flow_gridview.dart';
import '../../config/values/constant.dart';
import '../../pages/detail/goods_info_page.dart';
import '../../pages/tabbar_tabview_nestscrollview.dart';
import '../../pages/tabbar_tabview_normal.dart';
import '../../utils/screen_utils.dart';
import '../../utils/toast_utils.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:math' as Math;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePageDemo extends StatefulWidget {
  static const String routeName = "/HomePageDemo";

  @override
  _HomePageDemoState createState() => _HomePageDemoState();
}

class _HomePageDemoState extends State<HomePageDemo> with AutomaticKeepAliveClientMixin {
  static const String TAG = "HomePageDemo";

  var _scrollController = ScrollController();

  void _scrollListener() {
    //监听滚动位置
    _scrollController.addListener(() {
      print('${_scrollController.position}');
    });
    //滚动到指定位置
    _scrollController.animateTo(20.0);
  }

  // ------ ------ ------ 浅色
  List<Color> colorList = [
    // 角标 0-9
    Colors.orange[50],
    Colors.red[50],
    Colors.white, //Colors.pink[50],
    Colors.purple[50],
    Colors.blue[50],
    Colors.white, //Colors.cyan[50],
    Colors.white, //Colors.teal[50],
    Colors.green[50],
    Colors.yellow[50],
    Colors.white
  ];

  Color _getRandomColor() {
    return colorList[Math.Random().nextInt(colorList.length)];
  }

  // ------ ------ ------ 深色
  List<Color> deepColorList = [
    // 角标 0-9
    Colors.orange[500],
    Colors.red[500],
    Colors.pink[500],
    Colors.purple[500],
    Colors.blue[500],
    Colors.cyan[500],
    Colors.teal[500],
    Colors.green[500],
    Colors.black,
    Colors.brown
  ];

  Color _getRandomDeepColor() {
    return deepColorList[Math.Random().nextInt(deepColorList.length)];
  }

  // ------ ------ ------ 随机标签: 实际开发以数据接口为准
  List<String> labelList = [
    "自营",
    "京东超市",
    "京东物流",
    "品牌闪购",
    "京东秒杀",
  ];

  String _getRandomLabel() {
    return labelList[Math.Random().nextInt(labelList.length)];
  }

  // ------ ------ ------ 业务
  // List<BannerData> bannerList = [];

  bool showTopButton = false;
  bool loading = true;
  int _currentGridPageIndex = 0;

  String _bannerBgUrl = "http://via.placeholder.com/350x150";
  String _gridBgUrl =
      "https://m.360buyimg.com/mobilecms/s1125x435_jfs/t1/69613/13/4742/97849/5d2ef146Eaf504529/35e8041bf0dac25d.jpg.dpg.webp";

  // String _gridBgUrl = "https://m.360buyimg.com/mobilecms/s1125x435_jfs/t1/69613/13/4742/97849/5d2ef146Eaf504529/35e8041bf0dac25d.jpg.dpg.webp";
  List _bannerList = [];
  List _gridList = [];
  List _gridList2 = [];

  // 混合模块
  List _subFloorList = [];

  // 快报
  List _kuaibaoList = [];

  // 我的频道
  Map _chanelData;
  List _chanelList = [];

  HomeGoods _homeGoods = null;
  List _gridListGoods = [];

  List<Widget> _pageList = [];

  // 保持状态, 这样从其他界面再返回时, 不会重新创建 initState
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    print("${TAG}------initState------");

    _initData();
  }

  void _initData() async {
    loading = true;
    await Future.wait(<Future>[
      // _getBanner(),
      _getWelcomeHome(),
      _getRecommendItemList(),
    ]);
    loading = false;
  }



  Future<void> _getWelcomeHome() async {
    // var response = await AKApi().AKDio.post(ApiConfig.welcomeHome);
    // var data = response.data;
    // print("response.data.runtimeType:${data.runtimeType}"); //_InternalLinkedHashMap<String, dynamic>

    // print(data['topBgImgBig']);


    // WelcomeHomeEntity welcomedata=  DataFactory.data_Entity(AssetJsonName.welcomeHome ) as WelcomeHomeEntity;
    // WelcomeHomeEntity welcomedata=  DataFactory._localWelcomeHomeMap(  ) as WelcomeHomeEntity;

    var data = await DataFactory.dataJsonFromAssets("assets/json_localdata/welcomeHome.json") ;

    if (data['topBgImgBig'] != null) {
      this.setState(() {
        this._bannerBgUrl = data['topBgImgBig'];
      });
    }

    // 轮播图
    List bannersList = data['floorList'][0]['content'];
    // print(bannersList);
    if (bannersList != null && bannersList.length > 0) {
      this.setState(() {
        this._bannerList = bannersList;
      });
    }

    //_gridBgUrl
    String gridBgUrl = data['floorList'][3]['content']['bgPic'];
    // print(gridBgUrl);
    if (gridBgUrl != null) {
      this.setState(() {
        this._gridBgUrl = gridBgUrl;
      });
    }

    // 功能模块
    // _gridList
    List gridList = data['floorList'][3]['content']['data'];
    // print(gridList);
    if (gridList != null && gridList.length > 0) {
      this.setState(() {
        // this._gridList = gridList;

        this._gridList = gridList.length >= 10 ? gridList.getRange(0, 10)?.toList() : [];
        this._gridList2 = gridList.length >= 20 ? gridList.getRange(10, 20)?.toList() : [];
      });
    }

    // 混合模块
    List subFloors = data['floorList'][5]['content']['subFloors'];
    for (int i = 0; i < subFloors.length; i++) {
      List subFloor = subFloors[i]['data'];
      for (int j = 0; j < subFloor.length; j++) {
        String img = subFloor[j]['img']; //00,01, 10,11,12,13, 20,21,
        String img2 = subFloor[j]['img2']; //00,01, 20,
        String showName = subFloor[j]['showName']; //00,01, 10,11,12,13, 20,21,
        String subtitle = subFloor[j]['subtitle']; //00,01, 10,11,12,13, 20,21,

        String slogan = subFloor[j]['slogan']; //01

        var content = subFloor[j]['content']; //00
        String message = subFloor[j]['content']['message'];
        String operateWord = subFloor[j]['content']['operateWord'];
        String name = subFloor[j]['content']['name'];
        List indexMiaoSha = subFloor[j]['content']['indexMiaoSha'];
        if (indexMiaoSha != null) {
          for (int k = 0; k < indexMiaoSha.length; k++) {
            String imageurl = indexMiaoSha[k]['imageurl'];
            var miaoShaPrice = indexMiaoSha[k]['miaoShaPrice'];
            var jdPrice = indexMiaoSha[k]['jdPrice'];
            String jumpProductId = indexMiaoSha[k]['jump']['params']['productId'];
          }
        }
      }
    }

    //_subFloorList
    this.setState(() {
      this._subFloorList = subFloors;
    });

    // 快报: 向上滚动的文字
    String kuaibao = data['floorList'][6]['showName'];
    String kuaibaoimg = data['floorList'][6]['content']['img']; //注意旋转效果
    List kuaibaoList = data['floorList'][6]['content']['announcement'];
    for (int i = 0; i < kuaibaoList.length; i++) {
      String kuaibaocontent = kuaibaoList[i]['content'];
      String kuaibaoslogan = kuaibaoList[i]['slogan']; //热门, 推荐
    }

    //_kuaibaoList
    this.setState(() {
      this._kuaibaoList = kuaibaoList;
    });

    // 我的频道
    String chanel = data['floorList'][7]['showName']; //我的频道
    String logoImage = data['floorList'][7]['logoImage'];
    String rightCorner = data['floorList'][7]['rightCorner']; //发现更多频道
    String rightCornerImg = data['floorList'][7]['rightCornerImg'];

    List chanelList = data['floorList'][7]['content']['subFloors'][0]['data'];
    for (int i = 0; i < chanelList.length; i++) {
      String chanel_img = chanelList[i]['img'];
      String chanel_showName = chanelList[i]['showName'];
      String channelLogo = chanelList[i]['channelLogo'];
      String followText = chanelList[i]['followText'];
      String chanel_subtitle = chanelList[i]['subtitle'];
      String chanel_jumpurl = chanelList[i]['jump']['params']['url'];
    }

    this.setState(() {
      this._chanelData = data['floorList'][7];
      this._chanelList = chanelList;
    });

    // _webViewFloorList[0].webViewList
    List webViewFloorList = data['webViewFloorList'][0]['webViewList'];
    for (int i = 0; i < webViewFloorList.length; i++) {
      String webView_img = webViewFloorList[i]['img'];
      String webView_jumpurl = webViewFloorList[i]['jump']['params']['url'];
    }
  }

  /// 获取商品推荐列表
  Future _getRecommendItemList() async {
    // var response = await AKApi().AKDio.post(ApiConfig.recommendItemList);
    // var data = response.data;
    // HomeGoods homeGoods = HomeGoods.fromJson(data);
    // print("==============================");
    // print(data.runtimeType);
    //
    // print("==============================");
    // print(homeGoods.runtimeType);

    HomeGoods homeGoods = await DataFactory.data_Entity(AssetJsonName.recommendItemList) as HomeGoods;
    var data = await DataFactory.dataJsonFromAssets("assets/json_localdata/recommendItemList.json") ;
    
    this.setState(() {
      // this._gridListGoods = homeGoods.toJson()['wareInfoList'];
      this._gridListGoods = data['wareInfoList'];
      this._homeGoods = homeGoods;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("${TAG}------build------");
    // 嵌套多种滚动方式 CustomScrollView
    return Scaffold(
      body: loading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : Column(
        children: [
          Expanded(
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                // SliverAppBar(),
                // SliverPadding(),
                // SliverToBoxAdapter(),
                // SliverGrid(),
                // SliverList(),
                // SliverFixedExtentList(),

                // 1. 标题
                // 2. 轮播banner
                // 3. 主功能块GridView
                // 4. 优惠券列表
                // 5. 混合模块
                // 6. 商品推荐列表

                _buildSliverAppBar(context),

                _buildGridMoudle(context),

                // 广告消息动画
                _buildKuaibaoAds(context),

                // 混合模块
                SliverPadding(
                  padding: EdgeInsets.all(12),
                  sliver: SliverToBoxAdapter(
                    child: Container(
                      // height: 660,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Wrap(
                        // alignment: WrapAlignment.start,
                        alignment: WrapAlignment.spaceBetween,
                        spacing: 0.0,
                        runSpacing: 10.0,
                        children: _buildHybirdChildren(),
                      ),
                    ),
                  ),
                ),

                // 我的频道
                _buildHorizontalListView(),

                // 推荐商品列表
                // 一个中间标题
                /* SliverPadding(
                        padding: EdgeInsets.all(12),
                        sliver: SliverToBoxAdapter(
                          child: Container(
                            height: 48,
                            color: Colors.green,
                            child: Image.network(_homeGoods.title),
                          ),
                        ),
                      ),*/

                // 一个中间标题 : 可以根据滑动方向改变颜色
                SliverLayoutBuilder(
                  builder: (BuildContext context, SliverConstraints constraints) {
                    print('${constraints.userScrollDirection}');
                    var color = Colors.orange[50];
                    if (constraints.userScrollDirection == ScrollDirection.forward) {
                      color = Colors.red[400];
                    }
                    return SliverToBoxAdapter(
                      child: Container(
                        height: 48,
                        color: color,
                        child: Image.network(_homeGoods.title),
                      ),
                    );
                  },
                ),

                // 无tab的 SliverGrid
                _buildSliverGridview(), // SliverGrid

                // 瀑布流 : 无tab的
                /*SliverPadding(
                          padding: EdgeInsets.all(12),
                          sliver: FlowGridView(
                            homeGoods: _homeGoods,
                            isSliver: true,
                          )),
*/
                // 有tab的
                /*SliverPadding(
                        // padding: EdgeInsets.only(top: 16),
                        padding: EdgeInsets.all(12),
                        sliver: SliverToBoxAdapter(
                          child: Container(
                            // height: ScreenUtils.getScreenHeight(context),
                            // height: 140,
                            child: Column(
                              children: [
                                Container(
                                  // height: 66,
                                  color: Colors.white,
                                  child: Image.network(_homeGoods.title),
                                ),

                                //todo  tabs
                                TabLayoutWidget(homeGoods: _homeGoods),
                                // todo  嵌套滑动
                                // TabLayoutNestWidget(homeGoods: _homeGoods),
                              ],
                            ),
                          ),
                        ),
                      ),*/

                // 瀑布流 : 有tab的
                /*SliverPadding(
                        padding: EdgeInsets.all(12),
                        sliver: SliverToBoxAdapter(
                          child: Container(
                            height: ScreenUtils.getScreenHeight(context) -
                                ScreenUtils.getStatusBarHeight(context) -
                                ScreenUtils.getAppBarHeight(context) -
                                ScreenUtils.getBottomNavigationBarHeight(context),
                            // height: 500,
                            child: TabLayoutNestWidget(homeGoods: _homeGoods),
                          ),
                        ),
                      ),*/
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: showTopButton
      //     ? InkWell(
      //         child: Container(child: Icon(Icons.arrow_circle_up)),
      //         onTap: () {
      //           ToastUtils.show("go top");
      //         },
      //       )
      //     : Container(),
    );
  }

  SliverPadding _buildSliverGridview() {
    return SliverPadding(
      padding: EdgeInsets.all(12),
      sliver: SliverGrid(
        //Grid
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //Grid按两列显示
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1 / 1.75,
        ),
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            //_gridListGoods
            String wname = _gridListGoods[index]['wname'];
            String imageurl = _gridListGoods[index]['imageurl'];
            String couponInfo = _gridListGoods[index]['couponInfo']; //"领券满399减150"
            String good = _gridListGoods[index]['good']; // 好评率
            String jdPrice = _gridListGoods[index]['jdPrice'];
            String clickUrl = _gridListGoods[index]['clickUrl'];
            String wareId = _gridListGoods[index]['wareId'];
            String label = _getRandomLabel();

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
                    //todo 共享元素跳转
                    //图片
                    // Container(child: Image.network(imageurl)),
                    //todo 共享元素跳转
                    Container(
                      child: Hero(
                        tag: wareId,
                        child: Material(
                          color: Colors.transparent,
                          child: Image.network((index == 0 || index == 3)
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
                                color: Theme
                                    .of(context)
                                    .canvasColor,
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
                print("------wareId$wareId");
                var arguments = {"wareId": wareId};
                Navigator.of(context).pushNamed(GoodsInfoPage.routeName, arguments: arguments);
              },
            );
          },
          childCount: this._gridListGoods.length,
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildHorizontalListView() {
    return SliverToBoxAdapter(
      child: Container(
        // margin: EdgeInsets.all(12),
        margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
        padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // String chanel = data['floorList'][7]['showName']; //我的频道
            // String logoImage = data['floorList'][7]['logoImage'];
            // String rightCorner = data['floorList'][7]['rightCorner']; //发现更多频道
            // String rightCornerImg = data['floorList'][7]['rightCornerImg'];
            // 我的频道标题
            Container(
              // color: Colors.red,
              // height: 24,
              // width: 66,
              padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(2),
                // image: DecorationImage(
                //   image: NetworkImage(
                //     Constant.JDImg, //_chanelData['logoImage']图片太宽溢出错误
                //   ),
                //   fit: BoxFit.cover,
                // ),
              ),
              child: Text(
                _chanelData['showName'], // "我的频道"
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // 我的频道水平列表
            Container(
              width: double.infinity,
              height: 160,
              // color: Colors.red,
              padding: EdgeInsets.only(top: 8),
              child: ScrollConfiguration(
                behavior: AKOverScrollBehavior(),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _chanelList.length + 1,
                  itemBuilder: (context, index) {
                    if (index == _chanelList.length) {
                      // 最后一个
                      // String rightCorner = data['floorList'][7]['rightCorner']; //发现更多频道
                      // String rightCornerImg = data['floorList'][7]['rightCornerImg'];
                      return InkWell(
                        child: Container(
                          // width:60,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            // gradient: LinearGradient(
                            //   //渐变位置
                            //   begin: Alignment.topCenter,
                            //   end: Alignment.bottomCenter,
                            //   colors: [Colors.cyan[50], Colors.cyan[200]],
                            // ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 20,
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  _chanelData['rightCorner'],
                                  style: TextStyle(
                                    fontSize: 13,
                                    // color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.network(
                                  _chanelData['rightCornerImg'],
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          print("点击了 频道 ${_chanelData['rightCorner']}");
                        },
                      ); // 发现更多频道
                    } else {
                      String chanel_img = _chanelList[index]['img'];
                      String chanel_showName = _chanelList[index]['showName'];
                      String channelLogo = _chanelList[index]['channelLogo'];
                      String followText = _chanelList[index]['followText'];
                      String chanel_subtitle = _chanelList[index]['subtitle'];
                      String chanel_jumpurl = _chanelList[index]['jump']['params']['url'];

                      return InkWell(
                        child: Container(
                          width: 120,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            gradient: LinearGradient(
                              //渐变位置
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              // stops: [0.0, 1.0],         //[渐变起始点, 渐变结束点]
                              //渐变颜色[始点颜色, 结束颜色]
                              // colors: [Color.fromRGBO(63, 68, 72, 1), Color.fromRGBO(36, 41, 46, 1)]
                              // colors: [Colors.cyan[50], Colors.cyan[200]],
                              colors: [_getRandomColor(), _getRandomColor()],
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.network(
                                      chanel_img,
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Image.network(
                                        channelLogo,
                                        height: 24,
                                        width: 24,
                                      ),
                                    ),
                                    Text(
                                      chanel_showName,
                                      style: TextStyle(
                                        fontSize: 12,
                                        // color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 36),
                                  child: Wrap(
                                    spacing: 4.0,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                                        decoration: BoxDecoration(
                                          // color: Colors.orange[100],
                                          borderRadius: BorderRadius.circular(16),
                                          gradient: LinearGradient(
                                            //渐变位置
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            // stops: [0.0, 1.0],         //[渐变起始点, 渐变结束点]
                                            //渐变颜色[始点颜色, 结束颜色]
                                            colors: [Colors.orange[100], Colors.orange[50]],
                                          ),
                                        ),
                                        child: Text(
                                          followText, // "推荐"
                                          style: TextStyle(
                                            fontSize: 11,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                                        decoration: BoxDecoration(
                                          // color: Colors.orange[50],
                                          borderRadius: BorderRadius.circular(16),
                                          gradient: LinearGradient(
                                            //渐变位置
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            // stops: [0.0, 1.0],         //[渐变起始点, 渐变结束点]
                                            //渐变颜色[始点颜色, 结束颜色]
                                            colors: [Colors.orange[100], Colors.orange[50]],
                                          ),
                                        ),
                                        child: Text(
                                          chanel_subtitle, // "女神范"
                                          style: TextStyle(
                                            fontSize: 11,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          print("点击了 频道 ${chanel_jumpurl}");
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
    );
  }

  SliverPadding _buildKuaibaoAds(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 12),
      sliver: SliverToBoxAdapter(
        child: Container(
          // width: double.infinity,
          width: ScreenUtils.getScreenWidth(context),
          height: 48,
          color: Colors.white,
          padding: EdgeInsets.only(left: 12),
          child: AutoPlayAdsContentWidget(
            _kuaibaoList.length,
                (context, index) {
              String kuaibaocontent = _kuaibaoList[index]['content'];
              String kuaibaoslogan = _kuaibaoList[index]['slogan']; //热门, 推荐
              return InkWell(
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      child: Text(
                        kuaibaoslogan, // "推荐"
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Theme
                              .of(context)
                              .primaryColor,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                      indent: 8,
                      endIndent: 8,
                    ),
                    SizedBox(
                      width: 12,
                      height: 12,
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        kuaibaocontent, // "推荐商品推荐商品推荐商品推荐商品推荐商品推荐商品推荐商品",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  print("点击了_kuaibaoList-----index:$index");
                  print("点击了_kuaibaoList-----content:$kuaibaocontent");
                },
              );
            },
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildGridMoudle(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          // banner demo
          // _buildBannerDemo(),

          // 轮播banner
          _buildBanner(),

          // 功能grid
          Container(
            width: double.infinity,
            // height: 160, // 使用屏幕宽度和 AspectRatio 适配图片大小, 不写死高度
            // color: Colors.red,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(_gridBgUrl),
                  fit: BoxFit.fitWidth,
                )),
            child: AspectRatio(
              child: Stack(
                children: [
                  ScrollConfiguration(
                    behavior: AKOverScrollBehavior(),
                    child: PageView(
                      children: [
                        // 数量少 : 用 count
                        _buildGridviewCount(_gridList),
                        _buildGridviewCount(_gridList2),
                        // 数量多: 用 builder, 懒加载
                        _buildGridviewBuilder(_gridList),
                        _buildGridviewBuilder(_gridList2),
                      ],
                      scrollDirection: Axis.horizontal, //默认就是水平
                      onPageChanged: (index) {
                        print("onPageChanged------index: $index");
                        setState(() {
                          _currentGridPageIndex = index;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 6,
                    left: 0,
                    right: 0,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(4, (i) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentGridPageIndex == i ? Colors.white : Theme
                                    .of(context)
                                    .primaryColor),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              aspectRatio: 909 / 351,
            ),
          ),

          // 促销图片
          Image.network(
              "https://m.360buyimg.com/mobilecms/jfs/t1/55537/13/5336/79992/5d2eeea7E5b9166b0/57bda184a914540a.jpg!q70.jpg.dpg.webp"),
        ],
      ),
    );
  }

  List<Widget> _buildHybirdChildren() {
    List<Widget> tempList = [];
    for (int i = 0; i < _subFloorList.length; i++) {
      List subFloor = _subFloorList[i]['data'];
      for (int j = 0; j < subFloor.length; j++) {
        String img = subFloor[j]['img']; //00,01, 10,11,12,13, 20,21,
        String img2 = subFloor[j]['img2']; //00,01, 20,
        String showName = subFloor[j]['showName']; //00,01, 10,11,12,13, 20,21,
        String subtitle = subFloor[j]['subtitle']; //00,01, 10,11,12,13, 20,21,

        String slogan = subFloor[j]['slogan']; //01

        var content = subFloor[j]['content']; //00
        String message = subFloor[j]['content']['message'];
        String operateWord = subFloor[j]['content']['operateWord'];
        String name = subFloor[j]['content']['name'];
        List indexMiaoSha = subFloor[j]['content']['indexMiaoSha'];
        if (indexMiaoSha != null) {
          for (int k = 0; k < indexMiaoSha.length; k++) {
            String imageurl = indexMiaoSha[k]['imageurl'];
            var miaoShaPrice = indexMiaoSha[k]['miaoShaPrice'];
            var jdPrice = indexMiaoSha[k]['jdPrice'];
            String jumpProductId = indexMiaoSha[k]['jump']['params']['productId'];
          }
        }
// tempList.add(_buildHybirdItemWidget());

        int betweenPadding = 6;
        //最多是3个空隙, 计算最小宽度
        double minWidthPercent25 = (ScreenUtils.getScreenWidth(context) - 12 * 2 - 12 * 2 - betweenPadding * 3) / 4;
        // 最少有一个空隙
        double normalWidthPercent50 = (ScreenUtils.getScreenWidth(context) - 12 * 2 - 12 * 2 - betweenPadding) / 2;
        tempList.add(
          InkWell(
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  //渐变位置
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    ((i == 0 && j == 1) || (i == 1 && j == 3) || (i == 2 && j == 1)) ? Colors.white : _getRandomColor()
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   showName,
                  //   style: TextStyle(
                  //     fontSize: 15,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),

                  (slogan == null || slogan.length < 1)
                      ? Text(
                    showName,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                      : Container(
                    width: img2 == null
                        ? minWidthPercent25 //最多是3个空隙
                        : normalWidthPercent50, // 最少有一个空隙
                    child: Row(
                      children: [
                        Text(
                          showName,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Container(
                          padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                          decoration: BoxDecoration(
                            // color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                              //渐变位置
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              // stops: [0.0, 1.0],         //[渐变起始点, 渐变结束点]
                              //渐变颜色[始点颜色, 结束颜色]
                              colors: [Colors.orange[100], Colors.orange[50]],
                            ),
                          ),
                          child: Text(
                            slogan, // "推荐"
                            style: TextStyle(
                              fontSize: 11,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Text(
                    subtitle,
                    style: TextStyle(
                      color: _getRandomDeepColor(),
                      fontSize: 13,
                    ),
                  ), //
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    width: img2 == null
                        ? minWidthPercent25 //最多是3个空隙
                        : normalWidthPercent50, // 最少有一个空隙
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: img2 == null
                          ? [
                        Container(
                          width: minWidthPercent25,
                          height: minWidthPercent25,
                          child: Center(
                            child: Image.network(
                              img,
                              // width: 40,
                              // height: 40,
                              fit: BoxFit.cover,
                              // color: Color(0xff0d69ff).withOpacity(1.0),
                              // colorBlendMode: BlendMode.softLight,
                              // color: Colors.white,
                              // colorBlendMode: BlendMode.softLight,//dstIn,
                            ),
                          ),
                        ),
                      ]
                          : [
                        InkWell(
                          onTap: () {
                            print("$img");
                          },
                          child: Container(
                            width: minWidthPercent25,
                            height: minWidthPercent25,
                            child: Center(
                              child: Image.network(
                                img,
                                // width: 40,
                                // height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("$img2");
                          },
                          child: Container(
                            width: minWidthPercent25,
                            height: minWidthPercent25,
                            child: Center(
                              child: Image.network(
                                img2,
                                // width: 40,
                                // height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Image.network(
                  //   img2,
                  //   fit: BoxFit.cover,
                  // ),
                ],
              ),
            ),
            onTap: () {
              print("点击了 混合模块 i.j=$i,$j");
            },
          ),
        );
      }
    }
    return tempList;
  }

  List<Widget> _buildGridItem(List gridList) {
    return gridList.map((itemData) {
      String iconUrl = itemData['icon'];
      String gridName = itemData['name'];
      String jumpUrl = itemData['jump']['params']['url'];
      return InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              iconUrl,
              height: 40,
              width: 40,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              gridName,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        onTap: () {
          print("点击了 grid ${jumpUrl}");
        },
      );
    }).toList();
  }

  Widget _buildGridviewCount(List gridList) {
    return Container(
      width: ScreenUtils.getScreenWidth(context),
      // height: 160,
      alignment: Alignment.center,
      child: GridView.count(
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        crossAxisCount: 5,
        childAspectRatio: 1,
        padding: EdgeInsets.all(2),
        children: _buildGridItem(gridList),
        // 取消自身滚动
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }

  Widget _buildGridviewBuilder(List gridList) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GridView.builder(
        // 取消自身滚动
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        //默认就是竖直方向
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
          childAspectRatio: 1, //默认就是1
        ),
        itemCount: gridList.length,
        itemBuilder: (context, index) {
          String iconUrl = gridList[index]['icon'];
          String gridName = gridList[index]['name'];
          String jumpUrl = gridList[index]['jump']['params']['url'];
          return InkWell(
            child: Container(
              // padding: const EdgeInsets.all(2.0),
              // margin: const EdgeInsets.all(2.0),
              // color: Colors.red,
              // height: 56,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    iconUrl,
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    gridName,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              print("点击了 grid ${jumpUrl}");
            },
          );
        },
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      height: 200,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        // color: Colors.blue[200],
        image: DecorationImage(
          image: NetworkImage(_bannerBgUrl),
          fit: BoxFit.fitWidth,
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: Container(
        height: 180,
        padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                _bannerList[index]['horizontalImag'],
                fit: BoxFit.cover,
              );
            },
            itemCount: _bannerList.length,
            pagination: SwiperPagination(
              // 分页指示器
              alignment: Alignment.bottomCenter, // 位置 Alignment.bottomCenter 底部中间
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 4), // 距离调整
              builder: DotSwiperPaginationBuilder(
                // 指示器构建
                space: 5,
                // 点之间的间隔
                size: 6,
                // 没选中时的大小
                activeSize: 8,
                // 选中时的大小
                color: Colors.black54,
                // 没选中时的颜色
                activeColor: Colors.white, // 选中时的颜色
              ),
            ),
            // control: SwiperControl(color: Colors.pink,),
            // viewportFraction: 1,
            // scale: 1,
            autoplay: true,
            onTap: (index) {
              var url = this._bannerList[index]['jump']['params']['url'];
              var title = this._bannerList[index]['title'];
              print("banner------$index ------jumpUrl:${url}");
              // Navigator.pushNamed(context, '/webview', arguments: {
              //   'url': this._bannerList[index].jumpUrl
              // });

              var arguments = {"url": url, "title": title};
              // AKWebViewPage(url:'https://flutter.cn',title: "我是web标题",)

              Navigator.of(context).pushNamed(AKWebViewPage.routeName, arguments: arguments);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      // leading: GestureDetector(
      //   child: Icon(Icons.arrow_back),
      //   onTap: () => Navigator.pop(context),
      // ), //左侧按钮
      /**
       * 如果没有leading，automaticallyImplyLeading为true，就会默认返回箭头
       * 如果 没有leading 且为false，空间留给title
       * 如果有leading，这个参数就无效了
       */
      automaticallyImplyLeading: false,
      // title: Text('大标题'), //标题
      //标题是否居中
      // centerTitle: true,
      actions: [
        /*Container(
          width: 48,
          color: Colors.blue,
          child: Center(
            child: IconButton(
              icon: Icon(Icons.crop_free),
              // color: Colors.white,
              onPressed: () {},
            ),
          ),
        ),*/
        IconButton(
          icon: Icon(Icons.crop_free),
          color: Colors.white,
          onPressed: () {
            ToastUtils.show("扫一扫");
          },
        ),
        IconButton(
          icon: Icon(Icons.message),
          color: Colors.white,
          onPressed: () {
            ToastUtils.show("消息");
          },
        ),
      ],
      //阴影的高度
      elevation: 0,
      //是否显示阴影
      forceElevated: false,
      //背景颜色
      // backgroundColor: Colors.red,
      //黑底白字，lignt 白底黑字
      brightness: Brightness.dark,
      //所有的icon的样式,不仅仅是左侧的，右侧的也会改变: 如果 icon自己内部指定的颜色, 则不会改变
      iconTheme: IconThemeData(
        color: Theme
            .of(context)
            .primaryColor,
        size: 32,
        opacity: 1,
      ),

      // appbar是否显示在屏幕的最上面，为false是显示在最上面，为true就显示在状态栏的下面
      primary: true,
      //标题两边的空白区域
      titleSpacing: 0,
      //默认高度是状态栏和导航栏的高度，如果有滚动视差的话，要大于前两者的高度
      expandedHeight: 120.0,
      //滑动到最上面，再滑动是否隐藏导航栏的文字和标题等的具体内容，为true是隐藏，为false是不隐藏
      floating: false,
      //是否固定导航栏，为true是固定，为false是不固定，往上滑，导航栏可以隐藏
      pinned: true,
      //只跟floating相对应，如果为true，floating必须为true，也就是向下滑动一点儿，整个大背景就会动画显示全部，网上滑动整个导航栏的内容就会消失
      snap: false,
      // 添加扩展的内容
      // flexibleSpace: _buildFlexibleSpaceBar(context),
      flexibleSpace: _buildFlexibleSpace(context),
    );
  }

  Widget _buildFlexibleSpaceBar(BuildContext context) {
    return FlexibleSpaceBar(
      title: Container(
        height: 32,
        width: ScreenUtils.getScreenWidth(context) * 0.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        child: TextField(
          style: TextStyle(fontFamily: "PingFang"),
          decoration: InputDecoration(
            hintText: '请输入商品名称',
            hintStyle: TextStyle(
              fontSize: 12,
            ),
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              size: 20,
              color: Colors.blueGrey,
            ),
            suffixIcon: Icon(
              Icons.camera_alt,
              size: 20,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
      centerTitle: true,
      titlePadding: EdgeInsets.only(bottom: 12, right: 0),
      collapseMode: CollapseMode.parallax,
      background: Image.network(
        // 'https://m.360buyimg.com/mobilecms/s1125x939_jfs/t1/57927/10/5246/102061/5d2ef10bEf2debf2e/93d987f05fa960ea.jpg.dpg.webp',
        'https://goss.cfp.cn/creative/vcg/800/new/VCG211165042753.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildFlexibleSpace(BuildContext context) {
    return Stack(children: [
      Row(
        children: [
          Expanded(
              child: Transform.rotate(
                angle: -Math.pi,
                child: Image.network(
                  // "https://goss.cfp.cn/creative/vcg/800/new/VCG211165042753.jpg",
                  // "http://mi0.mmmono.com/444781adcbf63f1f24f543154a291efd.gif",
                  "http://mi0.mmmono.com/42a627e7631dcf9632a02a3d5338d2ef.gif",
                  fit: BoxFit.cover,
                  height: 200 + MediaQuery
                      .of(context)
                      .padding
                      .top,
                ),
              )),
        ],
      ),
      FlexibleSpaceBar(
        title: Container(
          height: 32,
          margin: EdgeInsets.only(
            left: 12,
            right: 12,
          ),
          // centerTitle: true,
          // width: ScreenUtils.getScreenWidth(context) * 0.5,
          // centerTitle: false,
          width: ScreenUtils.getScreenWidth(context) * 0.7,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(32)),
          ),
          child: TextField(
            // style: TextStyle(fontFamily: "PingFang"),
            decoration: InputDecoration(
              hintText: '请输入商品名称',
              hintStyle: TextStyle(
                fontSize: 12,
              ),
              border: InputBorder.none,
              prefixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.blueGrey,
                ),
                onPressed: () {
                  ToastUtils.show("搜索");
                },
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.camera_alt,
                  size: 20,
                  color: Colors.blueGrey,
                ),
                onPressed: () {
                  ToastUtils.show("拍照");
                },
              ),
            ),
          ),
        ),

        titlePadding: EdgeInsets.only(bottom: 12, right: 0),
        collapseMode: CollapseMode.parallax,
        // background: Image.network(
        //   // 'https://m.360buyimg.com/mobilecms/s1125x939_jfs/t1/57927/10/5246/102061/5d2ef10bEf2debf2e/93d987f05fa960ea.jpg.dpg.webp',
        //   'https://goss.cfp.cn/creative/vcg/800/new/VCG211165042753.jpg',
        //   fit: BoxFit.cover,
        // ),
      ),
    ]);
  }
}
