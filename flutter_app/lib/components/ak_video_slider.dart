


import 'package:flutter/material.dart';

class AKVideoSlider extends StatefulWidget {
  final  double sliderValue; //   >=0.0 and <=1.0
  final ValueChanged<double> onChanged;
  final ValueChanged<double> onChangeStart;
  final ValueChanged<double> onChangeEnd;

  const AKVideoSlider({Key key, this.sliderValue=0.0, this.onChanged, this.onChangeStart, this.onChangeEnd}) : super(key: key);


  @override
  _AKVideoSliderState createState() => _AKVideoSliderState();
}

class _AKVideoSliderState extends State<AKVideoSlider> {

  double _sliderValue=0.0;

  @override
  void initState() {
    super.initState();

    _sliderValue =widget.sliderValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: SliderTheme(
      data:SliderThemeData(
        // 轨道高度
        trackHeight:2.5,
        // 激活部分轨道颜色
        activeTrackColor:Colors.red,
        // 未激活部分轨道颜色
        inactiveTrackColor:Colors.grey,
        // 滑动条无法使用时被激活轨道的颜色
        // disabledActiveTrackColor:,
        // 滑动条无法使用时未激活轨道的颜色
        // disabledInactiveTrackColor:,
        // 已激活轨道刻度线的颜色
        //  activeTickMarkColor:Colors.blue,
        // 未激活轨道刻度线的颜色
        //  inactiveTickMarkColor:Colors.green,
        // 滑动条无法使用时已激活轨道刻度线的颜色
        // disabledActiveTickMarkColor:,
        // 滑动条无法使用时未激活轨道刻度线的颜色
        // disabledInactiveTickMarkColor:,
        // 滑块颜色
        thumbColor:Colors.white,
        // overlappingShapeStrokeColor:,
        // 滑动条不可用时滑块的颜色
        // disabledThumbColor:,
        // 拖动过程中滑块周围绘制的覆盖层的颜色
        //  overlayColor:Colors.green,
        // label背景色
        valueIndicatorColor:Colors.black26,
        // 拖动过程中滑块周围绘制的覆盖层的大小,RoundSliderOverlayShape(overlayRadius: 20.0)
        //  overlayShape:RoundSliderOverlayShape(overlayRadius: 20.0),
        // 刻度形状,RoundSliderTickMarkShape(tickMarkRadius:2.0)//大于3会消失
        tickMarkShape:RoundSliderTickMarkShape(tickMarkRadius:2.0),
        // 滑块形状,RoundSliderThumbShape(enabledThumbRadius: 12.0,disabledThumbRadius: 3.0)
        thumbShape:RoundSliderThumbShape(enabledThumbRadius:8.0,disabledThumbRadius: 4.0),
        // 轨道形状
        //  trackShape:RoundedRectSliderTrackShape(),
        // valueIndicatorShape:,
        // rangeTickMarkShape:,
        // rangeThumbShape:,
        // rangeTrackShape:,
        // rangeValueIndicatorShape:,
        // 控制label显示,ShowValueIndicator.onlyForDiscrete:当divisions
        // showValueIndicator:,
        // label文本样式
        // valueIndicatorTextStyle:,
        // minThumbSeparation:,
        // thumbSelector:,
      ),
      child: Slider(
        value: _sliderValue,

        min: 0.0,
        max: 1.0,
        divisions: 100,
        // label: '$_sliderValue',
        // activeColor: Colors.green,
        // inactiveColor: Colors.grey,
        semanticFormatterCallback: (double newValue) {
          return '${newValue.round()} dollars}';
        },
        onChanged: (value){
          print('Slider------onChanged:$value');
          setState(() {
            this._sliderValue = value;
          });
          if(widget.onChanged!=null){
            widget.onChanged(value);
          }
        },
        onChangeStart: (value){
          print('Slider------onChangeStart:$value');
          if(widget.onChangeStart!=null){
            widget.onChangeStart(value);
          }
        },
        onChangeEnd: (value){
          print('Slider------onChangeEnd:$value');
          if(widget.onChangeEnd!=null){
            widget.onChangeEnd(value);
          }
        },
      ),
    ),);
  }
}
