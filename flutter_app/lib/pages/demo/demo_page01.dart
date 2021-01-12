import 'package:flutter/material.dart';
import '../../pages/home/banner_swiper_demo.dart';

class DemoPage01 extends StatefulWidget {
  static const String routeName = "/DemoPage01";

  @override
  _DemoPage01State createState() => _DemoPage01State();
}

class _DemoPage01State extends State<DemoPage01> {
  static const String TAG = "DemoPage01";

  var _scrollController = ScrollController();

  // static const IMAGE_SRC = 'https://picsum.photos/id/142/600/400';

  // static const IMAGE_SRC = 'http://mi0.mmmono.com/be22ae22a44f3e92dce885ff28de912a.gif';

  // static const IMAGE_SRC = 'http://mi0.mmmono.com/3e1987791f905957c22da512ccf27bb1.gif';
  // static const IMAGE_SRC = 'http://mi0.mmmono.com/129da4724ba9b8a0e002000db82437a0.gif';
  // static const IMAGE_SRC = 'http://mi0.mmmono.com/444781adcbf63f1f24f543154a291efd.gif';
  // static const IMAGE_SRC = 'http://mi0.mmmono.com/42a627e7631dcf9632a02a3d5338d2ef.gif';
  // static const IMAGE_SRC = 'http://mi0.mmmono.com/91762e14ea19ede9ccc1d9833923951a.gif';
  static const IMAGE_SRC = 'http://mi0.mmmono.com/4e8e7ceb30aa41115a2afc01789fce16.gif';

  // static const IMAGE_SRC = "https://s1.veryins.com/image/v/t51.2885-15/sh0.08/e35/c0.169.1349.1349a/s640x640/125324709_234297144706474_4083727307599596228_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_cat=110&_nc_ohc=An1GEyGFqasAX_qmHCR&_nc_tp=24&oh=c83d03ecf532d4d8b37e9b8ba1ad4c8b&oe=5FDD762E";

  List _list = List.generate(20, (index) => 'Item - $index');

  Widget _builder(context, index) {
    return ListTile(title: Text(_list[index]));
  }

  @override
  void initState() {
    super.initState();
    print("${TAG}------initState------");
  }

  @override
  Widget build(BuildContext context) {
    print("${TAG}------build------");
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: customScrollViewDemo1(),
            // child: demo2(),
          ),
        ],
      ),
    );
  }

  Widget demo2() {
    return CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
      SliverAppBar(
        title: Text('CustomScrollView'),
        backgroundColor: Colors.pink,
        // https://flutter.github.io/assets-for-api-docs/assets/material/app_bar_pinned.mp4
        floating: true,
        snap: false,
        pinned: true,
        expandedHeight: 200,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16),
            child: Icon(Icons.list),
          ),
        ],
        leading: Icon(Icons.home),
        flexibleSpace: Row(
          children: <Widget>[
            Expanded(
              child: Image.network(
                IMAGE_SRC,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
      SliverPadding(
        padding: EdgeInsets.only(top: 10),
      ),
      SliverPadding(
        padding: EdgeInsets.all(12),
        sliver: SliverToBoxAdapter(
          child: BannerSwiperDemo(),
        ),
      ),
      SliverPadding(
        padding: EdgeInsets.only(top: 10),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          _builder,
          childCount: _list.length,
        ),
      ),
    ]);
  }

  Widget customScrollViewDemo1() {
    return CustomScrollView(
      controller: _scrollController,
      // Axis scrollDirection = Axis.vertical,//滑动的方向
      // bool reverse = false,//控制 CustomScrollView 里列表项的排列顺序
      // ScrollController controller,//可以控制 CustomScrollView 滚动的位置
      ///                            1.设置 CustomScrollView 滑动的初始位置
      //                             2.可以控制 CustomScrollView 是否存储和恢复滑动的位置
      //                             3.可以读取、设置当前滑动的位置
      //                             可以继承 ScrollController 实现自定义的功能
      //                             当 primary 为 true 时，controller 必须为 null
      // bool primary,
      // ScrollPhysics physics,
      // bool shrinkWrap = false,
      // Key center,//放在 CustomScrollView 中间的 子Widget 的 key
      // double anchor = 0.0,//CustomScrollView 开始滑动的偏移量
      ///                      如果 anchor 为 0.0，则 CustomScrollView 的 子Widget 从头开始排列
      //                      如果 anchor 为 0.5，则 CustomScrollView 的 子Widget 从中间开始排列
      //                      如果 anchor 为 1.0，则 CustomScrollView 的 子Widget 从底部开始排列
      // double cacheExtent,
      // this.slivers = const <Widget>[],
      // int semanticChildCount,
      // DragStartBehavior dragStartBehavior = DragStartBehavior.start,//确定处理拖动开始行为的方式。
      /// 如果设置为[DragStartBehavior.start]，则在检测到拖动手势时将开始滚动拖动行为
      //  如果设置为[DragStartBehavior.down]，它将在首次检测到向下事件时开始   可选
      // String restorationId,
      // Clip clipBehavior = Clip.hardEdge,
      slivers: [
        SliverAppBar(
          pinned: true,
          // stretch: true,
          // 如果 floating=false，当列表往下滑动时，会先将列表内容滚动到顶部，然后再将 SliverAppBar 浮动出现
          // 如果 floating=true，当列表往下滑动时，会先将 SliverAppBar 浮动出现（与列表是否滚动到顶部无关），然后再继续列表的滑动
          // floating: true,
          // snap: false,
          expandedHeight: 200.0,
          // flexibleSpace: FlexibleSpaceBar(
          //   title: Text('开学季'),
          //   background: Image.network(
          //     "https://s1.veryins.com/image/v/t51.2885-15/sh0.08/e35/c0.169.1349.1349a/s640x640/125324709_234297144706474_4083727307599596228_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_cat=110&_nc_ohc=An1GEyGFqasAX_qmHCR&_nc_tp=24&oh=c83d03ecf532d4d8b37e9b8ba1ad4c8b&oe=5FDD762E",
          //     fit: BoxFit.cover,
          //   ),
          //   // centerTitle: true,
          // ),

          flexibleSpace: Stack(children: [
            Row(
              children: [
                Expanded(
                    child: Image.network(
                  IMAGE_SRC,
                  fit: BoxFit.cover,
                  height: 200 + MediaQuery.of(context).padding.top,
                )),
              ],
            ),
            FlexibleSpaceBar(
              title: Text('开学季1'),
              // background: Image.network(
              //   "https://goss.cfp.cn/creative/vcg/800/new/VCG211165042753.jpg",
              //   fit: BoxFit.cover,
              // ),
              // centerTitle: true,
            ),
          ]),
        ),
        SliverPadding(
          padding: EdgeInsets.only(top: 10),
        ),
        SliverPadding(
          padding: EdgeInsets.all(12),
          sliver: SliverToBoxAdapter(
            child: BannerSwiperDemo(),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(top: 10),
        ),
        SliverGrid(
          //调整间距
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              crossAxisSpacing: 10, maxCrossAxisExtent: 200, mainAxisSpacing: 10, childAspectRatio: 4.0),
          //加载内容
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                //设置每个item的内容
                alignment: Alignment.center,
                color: Colors.orangeAccent,
                child: Text("$index"),
              );
            },
            childCount: 20, //设置个数
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(top: 10),
        ),
        SliverFixedExtentList(
          itemExtent: 50,
          //加载内容
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.deepPurpleAccent,
                child: Text('$index'),
              );
            },
            //设置显示个数
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
