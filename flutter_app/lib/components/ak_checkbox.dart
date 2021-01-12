import 'package:flutter/material.dart';

class AKRoundCheckbox extends StatefulWidget {
  bool value = false;

  Function(bool) onChanged;
  final Color activeColor;
  final Color checkColor;
  final Color borderColor;
  final Color activeBorderColor;
  final Color backgroundColor;
  final double size;
  final double borderWidth;
  final double elevation;
  final double checkSize;
  final Widget checkIcon;

  AKRoundCheckbox({
    Key key,
    @required this.value,
    this.onChanged,
    this.activeColor = const Color(0xFFFFFFFF),
    this.checkColor = const Color(0xFF333333),
    this.size = 20,
    this.borderWidth = 1,
    this.borderColor = const Color(0xFF878787),
    this.activeBorderColor = const Color(0xFF333333),
    this.backgroundColor = const Color(0xFFFFFFFF),
    this.checkIcon,
    this.checkSize = 14,
    this.elevation = 1,
  }) : super(key: key);

  @override
  _AKRoundCheckboxState createState() => _AKRoundCheckboxState();
}

class _AKRoundCheckboxState extends State<AKRoundCheckbox> {
  bool _value = false;
  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            _value = !_value;
          });
          widget.onChanged(_value);
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 4, 12, 12),
          child: Container(
            height: widget.size,
            width: widget.size,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _value ? widget.activeColor : widget.backgroundColor,
              shape: BoxShape.circle,
              border: Border.all(
                width: widget.borderWidth,
                color: _value ? widget.activeBorderColor : widget.borderColor,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFF2F2F2),
                  offset: Offset(0, 0), //阴影xy轴偏移量
                  blurRadius: 10.0, //阴影模糊程度
                  spreadRadius: widget.elevation, //阴影扩散程度
                )
              ],
            ),
            child: _value
                ? (widget.checkIcon == null
                ? Icon(
              Icons.check,
              color: widget.checkColor,
              size: widget.checkSize,
            )
                : widget.checkIcon)
                : Container(),
          ),
        ));
  }
}
