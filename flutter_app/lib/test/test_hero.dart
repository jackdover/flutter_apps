import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MinePage extends StatefulWidget {
  static const String routeName = "/MinePage";

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {

  static const String TAG = "MinePage";

  @override
  void initState() {
    super.initState();
    print("${TAG}------initState------");
  }

  @override
  Widget build(BuildContext context) {
    print("${TAG}------build------");
    return Center(
      child: Column(
        children: [
          Text("MinePage"),
          Text("MinePage"),
          Text("MinePage"),
          Text("MinePage"),
          RaisedButton(
            child: Text("打开路由A"),
            onPressed: (){
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (BuildContext context, Animation animation,
                      Animation secondaryAnimation) {
                    return  new FadeTransition(
                      opacity: animation,
                      child: Scaffold(
                        appBar: AppBar(
                          title: Text("原图"),
                        ),
                        body: HeroAnimationRouteA(),
                      ),
                    ) ;
                  })
               );
            },
          ),
        ],
      ),
    );
  }
}


// 路由A
class HeroAnimationRouteA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.topCenter,
        width: 50,
        child: InkWell(
          child: Hero(
            tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
            child: Material(
              child: ClipOval(
                child: Image.network(
                  "https://m.360buyimg.com/mobilecms/s714x714_jfs/t1/124890/19/4269/114748/5edb4dd5E51dc2178/2ccdea6db9bd6dda.jpg!q70.dpg.webp",
                  fit: BoxFit.fitWidth,
                  width: 50,
                ),
              ),
            ),
          ),
          onTap: () {
            //打开B路由
            Navigator.push(context, PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
                  return new FadeTransition(
                    opacity: animation,
                    child: Scaffold(
                      appBar: AppBar(
                        title: Text("原图"),
                      ),
                      body: HeroAnimationRouteB(),
                    ),
                  );
                })
            );
          },
        ),
      ),
    );
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0; //在调试时，可以使用 timeDilation 属性来减缓页面转场过渡。
    return Center(
      child: Hero(
        tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
        child: Material(
          child: Image.network(
            "https://m.360buyimg.com/mobilecms/s714x714_jfs/t1/124890/19/4269/114748/5edb4dd5E51dc2178/2ccdea6db9bd6dda.jpg!q70.dpg.webp",
            fit: BoxFit.fitWidth,
          ),
        ),
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
  }
}
