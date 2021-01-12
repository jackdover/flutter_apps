import 'package:flutter/material.dart';
import '../../api/response/category/categorylist_entity.dart';

typedef ClickCallback = void Function(int index);

class MasterCategory extends StatefulWidget {

  final  List<CatelogyList>  categoryList ;
  final ClickCallback onItemClick;

  MasterCategory({Key key,@required this.categoryList, this.onItemClick}) : super(key: key);

  @override
  _MasterCategoryState createState() => _MasterCategoryState();
}

class _MasterCategoryState extends State<MasterCategory> {

  int activeIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 80,
            child: ListView.builder(
              itemCount: widget.categoryList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 40,
                        color: this.activeIndex == index
                            ? Color(0xFFFEFFFF)
                            : Color(0xFFF1F2F3),
                        child: Center(
                          child: Text(
                            this.widget.categoryList[index].name,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: this.activeIndex == index ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 0,
                        child: Offstage(
                          offstage: this.activeIndex != index,
                          child: Container(
                            width: 3,
                            height: 20,
                            color: Color(0xFFDA3E27),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    this.setState(() {
                      this.activeIndex = index;
                      widget.onItemClick(widget.categoryList[index].cid);
                    });
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
