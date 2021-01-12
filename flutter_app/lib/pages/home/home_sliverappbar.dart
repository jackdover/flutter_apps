import 'package:flutter/material.dart';
import '../../utils/screen_utils.dart';
import '../../utils/toast_utils.dart';
import 'dart:math' as Math;

class HomeSliverAppBar extends StatefulWidget {
  @override
  _HomeSliverAppBarState createState() => _HomeSliverAppBarState();
}

class _HomeSliverAppBarState extends State<HomeSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return _buildSliverAppBar(context);
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
        color: Theme.of(context).primaryColor,
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
                // "http://mi0.mmmono.com/42a627e7631dcf9632a02a3d5338d2ef.gif",
                "https://m.360buyimg.com/mobilecms/s1125x939_jfs/t1/57927/10/5246/102061/5d2ef10bEf2debf2e/93d987f05fa960ea.jpg.dpg.webp",
                fit: BoxFit.cover,
                height: 200 + MediaQuery.of(context).padding.top,
              ),
            ),
          ),
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
