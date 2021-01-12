import 'package:flutter/material.dart';
import '../../api/response/detail/ItemInfoResponseEntity.dart';
import '../../components/ak_behavior_scroll_configuration.dart';
import '../../components/ak_visibility.dart';
import '../../utils/toast_utils.dart';

class ExpansionListItemPage extends StatefulWidget {
  static const String routeName = "/ExpansionListItemPage";
  final Map arguments;

  const ExpansionListItemPage({Key key, this.arguments}) : super(key: key);

  @override
  _ExpansionListItemPageState createState() => _ExpansionListItemPageState();
}

class _ExpansionListItemPageState extends State<ExpansionListItemPage> {
  List<bool> _mExpansionBoolList = List.generate(20, (index) => false).toList();

  Suit _suit;
  String _domainUrl;

  @override
  void initState() {
    super.initState();
    // 获取跳转传递参数
    _suit = widget.arguments != null ? widget.arguments['suit'] : null;
    _domainUrl = _suit?.domain;
    _mExpansionBoolList = List.generate(_suit.itemList.length, (index) => false).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('优惠套装'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          /*child: ExpansionPanelList(
            expansionCallback: (index, isExpanded) {
              setState(() {
                for (int i = 0; i < _mExpansionBoolList.length; i++) {
                  _mExpansionBoolList[i] = i == index;
                }
                _mExpansionBoolList[index] = !isExpanded;
              });
            },
            children: _mExpansionBoolList.map((value) {
              return ExpansionPanel(
                isExpanded: value,
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text('老孟'),
                  );
                },
                body: Container(
                  height: 100,
                  color: Colors.greenAccent,
                ),
              );
            }).toList(),
          ),*/
          child: ExpansionPanelList.radio(
            children: buildExpanItemList(),
            //
            expansionCallback: (panelIndex, isExpanded) {
              print("---panelIndex:$panelIndex---$isExpanded");
            },
            // animationDuration = kThemeAnimationDuration,
            initialOpenPanelValue: 0,
            // expandedHeaderPadding: EdgeInsets.only(left:12),
            dividerColor: Colors.grey[400],
            elevation: 0,
          ),
        ),
      ),
    );
  }

  List<ExpansionPanelRadio> buildExpanItemList() {
    List<ExpansionPanelRadio> tempList = [];
    for (int i = 0; i < _suit.itemList.length; i++) {
      tempList.add(ExpansionPanelRadio(
        value: i,
        headerBuilder: (context, isExpanded) {
          return Container(
            // height: 148,
            alignment: Alignment.centerLeft,
            // color: Colors.blue,
            child: Column(
              children: [
                Container(
                  height: 48,
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Text("优惠套装${i + 1}"),
                      SizedBox(
                        width: 12,
                      ),
                      Text(" ${_suit.itemList[i].packPrice}",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 17, /*fontWeight: FontWeight.bold*/
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Text(" ${_suit.itemList[i].packListPrice}",
                          style: TextStyle(color: Colors.grey, fontSize: 14, decoration: TextDecoration.lineThrough)),
                    ],
                  ),
                ),
                AKVisibility(
                  visible: isExpanded ? VisibilityFlag.gone : VisibilityFlag.visible,
                  child: Container(
                    height: 80,
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 8.0, bottom: 16),
                    padding: const EdgeInsets.only(
                      left: 16.0,
                    ),
                    // color: Colors.red,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 80,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.network(
                                "${_domainUrl + _suit.itemList[i].productList[index].skuPicUrl}",
                                height: 72,
                              )),
                        );
                      },
                      separatorBuilder: (context, index) {
                        if (index != 0 || index != _suit.itemList[i].productList.length) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.grey[600],
                            ),
                          );
                        }
                      },
                      itemCount: _suit.itemList[i].productList.length,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        body: Column(
          children: [
            Container(

              // color: Colors.red,
              child: ScrollConfiguration(
                behavior: AKOverScrollBehavior(),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        // width: 80,
                        // color: Colors.red,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              "${_domainUrl + _suit.itemList[i].productList[index].skuPicUrl}",
                              height: 72,
                            )),
                      ),
                      title: Text(" ${_suit.itemList[i].productList[index].name}",
                          style: TextStyle(
                            // color: Colors.red,
                            fontSize: 16, /*fontWeight: FontWeight.bold*/
                          )),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Text(" ${_suit.itemList[i].productList[index].skuName}",
                            style: TextStyle(
                              // color: Colors.red,
                              fontSize: 13, /*fontWeight: FontWeight.bold*/
                            )),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                      return Divider();
                  },
                  itemCount: _suit.itemList[i].productList.length,
                ),
              ),
            ),
            Container(
              // padding: EdgeInsets.only(right: 10),
              margin: EdgeInsets.all(12),
              height: 40,
              width: double.infinity,
              child: FlatButton(
                onPressed: () {ToastUtils.show("点击了 加入购物车");},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  "加入购物车",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.red[400],
              ),
            ),
          ],
        ),
        // canTapOnHeader :false,
      ));
    }

    return tempList;
  }
}
