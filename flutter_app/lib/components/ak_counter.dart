
import 'package:flutter/material.dart';

// 数量加减组件
class AKCounter extends StatefulWidget {
  // 默认值
  final int defaultValue;
  // 最大值
  final int max;
  // 最小值
  final int min;

  AKCounter({Key key, this.defaultValue = 0, this.max, this.min }): super(key: key);

  @override
  _AKCounterState createState() => _AKCounterState();
}

class _AKCounterState extends State<AKCounter> {

  int value;

  @override
  void initState() {
    super.initState();
    value = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      child: Row(
        children: <Widget>[
          InkWell(
            child: Container(
              width: 40,
              height: 40,
              // color: Colors.black26,
              child: Icon(
                Icons.remove,
                size: 20,
              ),
            ),
            onTap: () {
              if (widget.min == null || value > widget.min) {
                setState(() {
                  value--;
                });
              }
            },
          ),
          Container(
            width: 48,
            height: 28,
            color:  Colors.grey[100],
            child: TextField(
              keyboardType: TextInputType.number,
              maxLines: 1,
              // onTap: () {},
              textAlign: TextAlign.center,
              controller: TextEditingController(text: value.toString()),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              // maxLength: 3,
              decoration: InputDecoration(
                // filled: true,
                // fillColor: Colors.grey[100],
                border: InputBorder.none,
                // counterText: "",
              ),
              onChanged: (text) {
                var inputValue = int.parse(text);
                if (widget.min != null && inputValue < widget.min) {
                  setState(() {
                    value = widget.min;
                  });
                  return;
                }
                if (widget.max != null && inputValue > widget.max) {
                  setState(() {
                    value = widget.max;
                  });
                  return;
                }
                print("inputValue=$inputValue");
                value = inputValue;
              },
            ),
          ),
          InkWell(
            child: Container(
              width: 40,
              height: 40,
              // color: Colors.black26,
              child: Icon(
                Icons.add,
                size: 20,
              ),
            ),
            onTap: () {
              if (widget.max == null || value < widget.max) {
                setState(() {
                  value++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
