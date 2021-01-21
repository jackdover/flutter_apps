import 'package:flutter/material.dart';
import 'package:flutter_module/public.dart';

class IndexPage extends StatefulWidget {


  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(GmLocalizations.of(context).home),
        title: Text("首页"),
      ),
      body: Center(child: Text("首页")), // 构建主页面
      drawer: MyDrawer(), //抽屉菜单
    );
  }
}


class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: _buildMenus(context)), //构建功能菜单
          ],
        ),
      ),
    );
  }

// 构建菜单项
  Widget _buildMenus(context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.color_lens),
          title: Text("占位"),
        ),
        ListTile(
          leading: const Icon(Icons.color_lens),
          title: Text("占位"),
        ),
        ListTile(
          leading: const Icon(Icons.color_lens),
          title: Text("gm.theme"),
          // onTap: () => Navigator.pushNamed(context, "themes"),
          onTap: () => Navigator.pushNamed(context, RouteNames.ThemePage),
        ),
        ListTile(
          leading: const Icon(Icons.language),
          title: Text("gm.language"),
          // onTap: () => Navigator.pushNamed(context, "language"),
          onTap: () => Navigator.pushNamed(context, RouteNames.LocalePage),
        ),
        ListTile(
          leading: const Icon(Icons.power_settings_new),
          title: Text("gm.logout"),
          onTap: () {
            showDialog(
              context: context,
              builder: (ctx) {
                //退出账号前先弹二次确认窗
                return AlertDialog(
                  content: Text("gm.logoutTip 再按一次退出"),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("gm.cancel"),
                      onPressed: () => Navigator.pop(context),
                    ),
                    FlatButton(
                      child: Text("gm.yes"),
                      onPressed: () {
                        //该赋值语句会触发MaterialApp rebuild
                        // userModel.user = null;
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }

}