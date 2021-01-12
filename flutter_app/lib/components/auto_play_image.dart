import 'dart:async';

import 'package:flutter/material.dart';
import '../utils/math_utils.dart';

// 自动切换显示内容
/// 1. 控制自动切换显示 : Timer对象，定时调用刷新数据
class AutoPlayImage extends StatefulWidget {
  final List urlList;
  final int seconds;

  const AutoPlayImage({Key key, @required this.urlList, this.seconds=3}) : super(key: key);

  @override
  _AutoPlayImageState createState() => _AutoPlayImageState();
}

class _AutoPlayImageState extends State<AutoPlayImage>
    with SingleTickerProviderStateMixin{
  String imgUrl = 'https://goss.cfp.cn/creative/vcg/800/new/VCG211165042753.jpg';
  int index = 0;
  Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(seconds: widget.seconds), (timer) {
      index++;
      if (index >= widget.urlList.length) {
        index = 0;
      }
      print("AutoPlayImage---执行时间---index=$index");
      setState(() {
        imgUrl = widget.urlList[index]['imageurl'] ?? imgUrl;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
    _timer = null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.network(
      imgUrl,
      fit: BoxFit.cover,
    ));
  }
}
