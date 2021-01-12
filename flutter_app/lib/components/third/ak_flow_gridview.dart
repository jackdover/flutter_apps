import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// 瀑布流 GridView
// 封装使用三方 flutter_staggered_grid_view: ^0.3.2
class AKFlowGridView extends StaggeredGridView {

  // 建议使用1
// 1. 无法确定GridView中的item的高度，所以无法设置宽高比，这种情况可以使用StaggeredGridView来自动适配高度
  AKFlowGridView.countBuilder({
    Key key,
    Axis scrollDirection: Axis.vertical,
    bool reverse: false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap: false,
    EdgeInsetsGeometry padding,
    @required int crossAxisCount,
    @required IndexedWidgetBuilder itemBuilder,
    @required int itemCount,
    double mainAxisSpacing: 0.0,
    double crossAxisSpacing: 0.0,
    bool addAutomaticKeepAlives: true,
    bool addRepaintBoundaries: true,
  }) : super.countBuilder(
          key: key,
          scrollDirection: scrollDirection,
          reverse: reverse,
          controller: controller,
          primary: primary,
          physics: physics,
          shrinkWrap: shrinkWrap,
          padding: padding,
          crossAxisCount: crossAxisCount,
          itemBuilder: itemBuilder,
          itemCount: itemCount,
          mainAxisSpacing: mainAxisSpacing,
          crossAxisSpacing: crossAxisSpacing,
          addAutomaticKeepAlives: addAutomaticKeepAlives,
          addRepaintBoundaries: addRepaintBoundaries,
          staggeredTileBuilder: (index) => StaggeredTile.fit(1),
        );
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

/*
// 建议使用1
// 1. 无法确定GridView中的item的高度，所以无法设置宽高比，这种情况可以使用StaggeredGridView来自动适配高度
StaggeredGridView _buildStaggeredGridViewAuto() {
  return StaggeredGridView.countBuilder(
    // shrinkWrap: true, // 默认false, 改为true滑动时会有乱变bug. 其实false时bug照样存在, 重启启动apk, 好像就没有了
    // controller: _scrollController,
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
      // controller: _scrollController,
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
*/
