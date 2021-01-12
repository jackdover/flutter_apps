import 'package:flutter/material.dart';

import 'common/error_content_widget.dart';

class AKFutureBuilder<T> extends FutureBuilder<T> {
  final Future<T> future;
  final T initialData;
  final AsyncWidgetBuilder<T> akbuilder;

  AKFutureBuilder({
    Key key,
    this.future,
    this.initialData,
    @required this.akbuilder,
  })  : assert(akbuilder != null),
        super(
          key: key,
          future: future,
          initialData: initialData,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                print('AKFutureBuilder------ConnectionState.none:当前未连接到任何异步计算,还没有开始网络请求');
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.active:
                print('AKFutureBuilder------ConnectionState.active:正在交互中，可以理解为正在返回数据');
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.waiting:
                print('AKFutureBuilder------ConnectionState.waiting:连接成功等待交互');
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.done:
                print('AKFutureBuilder------ConnectionState.done:交互完成，可以理解为数据返回完成');
                if (snapshot.hasError) return ErrorContentWidget(errorStr: 'Error: ${snapshot.error}');
                return akbuilder(context, snapshot);
              default:
                return Text('还没有开始网络请求');
            }
          },
        );

  ///snapshot就是_calculation在时间轴上执行过程的状态快照

}

class TestAKFutureBuilder extends StatefulWidget {

  final Map arguments; // var arguments = {"wareId": wareId};

  TestAKFutureBuilder({Key key, this.arguments}) : super(key: key);

  @override
  _TestAKFutureBuilderState createState() => _TestAKFutureBuilderState();
}

class _TestAKFutureBuilderState extends State<TestAKFutureBuilder> {

  var _mFuture;

  String itemId;

  @override
  void initState() {
    super.initState();


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
    await Future.wait(<Future>[
      _getDelay(),
      _initItemInfo(itemId),
    ]);
  }

  _getDelay() async {
    await Future.delayed(Duration(seconds: 5));
  }

  Future _initItemInfo(String itemId) async {
    // var response = await AKApi().AKDio.post(ApiConfig.ItemInfo, data: {
    //   "wareId": itemId,
    // });
    // var data = response.data;
    // print("------itemInfo:${data}");

    // this._itemInfo = ItemInfoResponseEntity.fromJson(data);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO 可使用 FutureBuilder 实现 https://blog.csdn.net/u011272795/article/details/83010974

      // 1. 判断方式
      // body: _itemInfo == null
      //     ? Container(
      //         alignment: Alignment.center,
      //         child: CircularProgressIndicator(
      //           backgroundColor: Colors.red,
      //         ),
      //       )
      //     : Container(
      //         child:
      //             Text("DetailPage: arguments:  ${widget.arguments != null ? widget.arguments['wareId'] : 'wareId'}")),

      // 2. 简单用法
      // body: FutureBuilder(
      //   builder: _buildFuture,
      //   future: _mFuture, // 用户定义的需要异步执行的代码，类型为Future<String>或者null的变量或函数
      // ),


      // 3. 封装通用加载过程 AKFutureBuilder
      body: AKFutureBuilder(
        akbuilder: _createFutureContent,
        future: _mFuture, // 用户定义的需要异步执行的代码，类型为Future<String>或者null的变量或函数
      ),

    );
  }

  ///snapshot就是_calculation在时间轴上执行过程的状态快照
  Widget _buildFuture(BuildContext context, AsyncSnapshot snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.none:
        print('none:当前未连接到任何异步计算,还没有开始网络请求');
        return Center(
          child: CircularProgressIndicator(),
        );
      case ConnectionState.active:
        print('active:正在交互中，可以理解为正在返回数据');
        return Center(
          child: CircularProgressIndicator(),
        );
      case ConnectionState.waiting:
        print('waiting:连接成功等待交互');
        return Center(
          child: CircularProgressIndicator(),
        );
      case ConnectionState.done:
        print('done:交互完成，可以理解为数据返回完成');
        if (snapshot.hasError)
          return ErrorContentWidget(
            errorStr: 'Error: ${snapshot.error}',
          );
        return _createFutureContent(context, snapshot);
      default:
        return Text('还没有开始网络请求');
    }
  }

  Widget _createFutureContent(BuildContext context, AsyncSnapshot snapshot) {
    return Center(
      child: Container(
        child: Text("内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
      ),
    );
  }
}
