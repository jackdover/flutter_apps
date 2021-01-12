import 'package:flutter/material.dart';
import '../../provides/providers.dart';

import 'package:provider/provider.dart';

class GeneralSettingPage extends StatefulWidget {
  static const String routeName = "/GeneralSettingPage";

  @override
  _GeneralSettingPageState createState() => _GeneralSettingPageState();
}

class _GeneralSettingPageState extends State<GeneralSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        title: Text('通用'),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            // Provide<Counter>(
            //   builder: (context, child, counter) {
            //     return Text(
            //       '${counter.value}',
            //     );
            //   },
            // ),
            Text('${context.watch<CounterProvider>().counter}'),
            FlatButton(
              onPressed: () {
                context.read<CounterProvider>().increment();
                // Provide.value<Counter>(context).increment();
              },
              child: Text('increase'),
            ),
            ListTile(
              title: Text(
                '夜间模式',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Switch(
                  value: true, activeColor: Colors.red, onChanged: (status) {}),
            ),
            ListTile(
              title: Text(
                '消息推送设置',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text(
                '隐私设置',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text(
                'WLAN环境下自动播放视频',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Switch(
                  value: true, activeColor: Colors.red, onChanged: (status) {}),
            ),
            ListTile(
              title: Text(
                '截屏弹出分享弹窗',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Switch(
                  value: true, activeColor: Colors.red, onChanged: (status) {}),
            ),
            ListTile(
              title: Text(
                '网络诊断',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text(
                '清除本地缓存',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Text('50.5M'),
            ),
            ListTile(
              title: Text(
                '切换站点',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.navigate_next),
            ),
          ]),
        ),
      ),
    );
  }
}
