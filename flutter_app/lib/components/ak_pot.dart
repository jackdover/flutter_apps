import 'package:flutter/material.dart';

class AKPot extends StatelessWidget {
  final Color color;
  final double size;
  final EdgeInsetsGeometry margin;

  const AKPot({
    Key key,
    this.color = Colors.red,
    this.size = 6.0,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: size,
      height: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
