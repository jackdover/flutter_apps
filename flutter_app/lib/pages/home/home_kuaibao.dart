import 'package:flutter/material.dart';
import '../../components/auto_play_ad_content.dart';
import '../../utils/screen_utils.dart';

class HomeKuaiBao extends StatefulWidget {
  final List kuaibaoList;

  const HomeKuaiBao({Key key, this.kuaibaoList}) : super(key: key);

  @override
  _HomeKuaiBaoState createState() => _HomeKuaiBaoState();
}

class _HomeKuaiBaoState extends State<HomeKuaiBao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      width: ScreenUtils.getScreenWidth(context),
      height: 48,
      color: Colors.white,
      padding: EdgeInsets.only(left: 12),
      child: AutoPlayAdsContentWidget(
        widget.kuaibaoList.length,
        (context, index) {
          String kuaibaocontent = widget.kuaibaoList[index]['content'];
          String kuaibaoslogan = widget.kuaibaoList[index]['slogan']; //热门, 推荐
          return InkWell(
            child: Row(
              children: [
                Container(
                  width: 40,
                  child: Text(
                    kuaibaoslogan, // "推荐"
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: Colors.grey,
                  indent: 8,
                  endIndent: 8,
                ),
                SizedBox(
                  width: 12,
                  height: 12,
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    kuaibaocontent, // "推荐商品推荐商品推荐商品推荐商品推荐商品推荐商品推荐商品",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {
              print("点击了_kuaibaoList-----index:$index");
              print("点击了_kuaibaoList-----content:$kuaibaocontent");
            },
          );
        },
      ),
    );
  }
}
