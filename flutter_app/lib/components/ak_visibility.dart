import 'package:flutter/material.dart';


enum VisibilityFlag {
  visible,
  invisible,
  offscreen,
  gone,
}

class AKVisibility extends StatelessWidget {
  final VisibilityFlag visible;
  final Widget child;

  const AKVisibility({Key key, @required this.child, this.visible = VisibilityFlag.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 显示
    if (visible == VisibilityFlag.visible) {
      return child;
    }
    // 占位
    else if (visible == VisibilityFlag.invisible) {
      // 用IgnorePointer包裹, 禁止占位状态的点击事件
      return IgnorePointer(
        child: Visibility(
          child: child,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          // false: 为不可见,
          visible: false,
        ),
      );
    }
    // 让消失
    else if (visible == VisibilityFlag.offscreen) {
      return new Offstage(offstage: true, child: child);
    }
    // 消失 : 空的Container
    else {
      return Container(width: 0.0, height: 0.0);
    }
  }
}



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
