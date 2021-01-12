import 'package:flutter/material.dart';

class TestBWidget extends StatelessWidget {
  final bool visible;

  const TestBWidget({Key key, this.visible = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      height: 100.0,
      width: 300,
      child: Column(
        children: [
          Text('TestBWidget 111111'),
          // 用IgnorePointer包裹, 禁止占位状态的点击事件
          IgnorePointer(
            child: Opacity(
              // opacity >= 0.0 && opacity <= 1.0
              opacity: visible ? 1.0 : 0.0,
              child: Container(
                color: Colors.pink,
                height: 50.0,
                width: 100,
                child: new Center(
                  child: Text('TestBWidget 222222'),
                ),
              ),
            ),
          ),
          Text('TestBWidget 333333'),
        ],
      ),
    );
  }
}

class TestCWidget extends StatelessWidget {
  final bool visible;

  const TestCWidget({Key key, this.visible = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Offstage(
      offstage: !visible,
      child: new Container(
        color: Colors.blue,
        height: 100.0,
        width: 300,
        child: new Center(
          child: new Text('TestCWidget'),
        ),
      ),
    );
  }
}

class TestDWidget extends StatelessWidget {
  final bool visible;

  const TestDWidget({Key key, this.visible = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.orange,
      height: 200.0,
      child: new Center(
        child: Container(
          color: Colors.red,
          height: 100.0,
          child: Column(
            children: [
              new Text('TestDWidget 111111'),
              Visibility(
                child: Text('TestDWidget 222222'),
                // maintainSize: true,
                // maintainAnimation: true,
                // maintainState: true,
                // false: 为不可见,
                visible: visible,
              ),
              new Text('TestDWidget 333333'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget i() {
  return Stack(
    children: <Widget>[
      Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1582204321233&di=ac7e8572222e1781cef5ad3add4daead&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn15%2F275%2Fw640h435%2F20181010%2Fcaba-hkrzvkw4936632.jpg',
      ),
      Positioned.fill(
        child: Opacity(
          opacity: 0.5,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.blue], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
          ),
        ),
      ),
    ],
  );
}
