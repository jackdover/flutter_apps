import 'package:flutter/material.dart';
import '../../components/ak_behavior_scroll_configuration.dart';
import '../../components/third/ak_webview_page.dart';
import '../../utils/screen_utils.dart';
import '../../utils/toast_utils.dart';

/* 九宫格 功能模块入口 */
class GridNineView extends StatefulWidget {
  final List gridList;
  final int horizontalNum;

  const GridNineView({
    Key key,
    @required this.gridList,
    this.horizontalNum = 5,
  }) : super(key: key);

  @override
  _GridNineViewState createState() => _GridNineViewState();
}

class _GridNineViewState extends State<GridNineView> {
  int _currentGridPageIndex = 0;

  int _pageCount = 1;

  @override
  void initState() {
    super.initState();

    // int a=15;
    // int b=2;
    // print(a%b);   //取余 1
    // print(a~/b);  //取整 7
    // print(a/b); //  7.5

    _pageCount = widget.gridList.length ~/ (widget.horizontalNum * 2) +
        ((widget.gridList.length % (widget.horizontalNum * 2)) > 0 ? 1 : 0);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollConfiguration(
          behavior: AKOverScrollBehavior(),
          child: PageView(
            children: _buildGridPageview(widget.gridList),
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
          bottom: 2,
          left: 0,
          right: 0,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_pageCount, (i) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: _currentGridPageIndex == i ? Colors.white : Theme.of(context).primaryColor),
                      color: _currentGridPageIndex == i ? Colors.white : Colors.grey),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildGridPageview(List gridList) {
    // this._gridList = gridList.length >= 10 ? gridList.getRange(0, 10)?.toList() : [];
    // this._gridList2 = gridList.length >= 20 ? gridList.getRange(10, 20)?.toList() : [];

    // // 数量少 : 用 count
    // _buildGridviewCount(),
    // // 数量多: 用 builder, 懒加载 //todo 有bug
    // // _buildGridviewBuilder(widget.gridList),

    List<Widget> temp = [];
    for (int i = 0; i < _pageCount; i++) {
      if (i == _pageCount - 1) {
        temp.add(_buildGridviewCount(gridList.getRange(i * 10, gridList.length)?.toList()));
      } else {
        temp.add(_buildGridviewCount(gridList.getRange(i * 10, (i + 1) * 10)?.toList()));
      }
    }
    return temp;
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
              height: 2,
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
          if(jumpUrl==null){
            ToastUtils.show("jumpUrl == null");
            return;
          }
          var arguments = {"url": jumpUrl, "title": gridName};
          // AKWebViewPage(url:'https://flutter.cn',title: "我是web标题",)
          Navigator.of(context).pushNamed(AKWebViewPage.routeName, arguments: arguments);
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
        crossAxisCount: widget.horizontalNum,
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
          crossAxisCount: widget.horizontalNum,
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
}
