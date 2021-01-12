import 'package:flutter/material.dart';
import '../../api/response/detail/ItemInfoResponseEntity.dart';
import '../../components/ak_counter.dart';
import '../../pages/detail/big_img_photoview_page.dart';
import '../../pages/detail/cholicechip_sku_item.dart';
import '../../utils/screen_utils.dart';
import '../../utils/toast_utils.dart';

class ItemSkuDialog extends StatefulWidget {
  final Data itemData; // _itemInfo?.floors[0]?.data

  const ItemSkuDialog({Key key, this.itemData}) : super(key: key);

  @override
  _ItemSkuDialogState createState() => _ItemSkuDialogState();
}

class _ItemSkuDialogState extends State<ItemSkuDialog> {
  List<String> _selectedButtonIdList;
  String currentSkuId;
  List<List<String>> selectedSkuList;

  @override
  void initState() {
    super.initState();
    this.setDefaultSelectButton();
    this.setDefaultSelectSku();
    this.updateMatchedSku();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: ScreenUtils.getScreenWidth(context),
        height: ScreenUtils.getScreenHeight(context) * 0.8,
        child: Stack(
          children: [
            Column(
              children: [
                // 头部
                Container(
                  height: 96,
                  child: Row(
                    children: [
                      // 图片
                      InkWell(
                        child: Container(
                          // margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                          // color: Colors.red,
                          // width: 96,
                          // height: 96,
                          child: Image.network(
                            widget.itemData?.wareImage[0]?.small,
                            height: 96,
                          ),
                        ),
                        onTap: () {
                          // 传递给大图界面的参数
                          var arguments2 = {"_pageIndex": 0, "imageList": widget.itemData.wareImage};

                          Navigator.of(context).pushNamed(BigImagePhotoViewPage.routeName, arguments: arguments2);
                        },
                      ),
                      SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 价格
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                text: widget.itemData?.priceLabel,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: widget.itemData?.priceInfo?.jprice,
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
                          ),
                          // 重量,编号
                          Row(
                            children: [
                              Text(
                                "${widget.itemData?.weightInfo?.title}:${widget.itemData?.weightInfo?.content}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(width: 16),
                              Text(
                                // TODO skuID取交集 暂时默认第一个
                                " 编号:${currentSkuId}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text("外边的"),

                      // 颜色版本
                      ...widget.itemData?.colorSizeInfo?.colorSize?.asMap()?.keys?.map((index) {
                        String titleText = widget.itemData?.colorSizeInfo?.colorSize[index].title;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 标题
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 12, bottom: 8),
                                  child: Text(
                                    titleText,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      // decoration: TextDecoration.none,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Text("里边的"),
                            // 单选框
                            CholiceChipSkuItem(
                              selectOptions: widget.itemData?.colorSizeInfo?.colorSize[index]?.buttons?.map((product) {
                                return SelectOption(
                                  id: product?.no,
                                  label: product?.text,
                                  value: product?.skuList,
                                );
                              })?.toList(),
                              // selectedId: _selectedButtonIdList[index],
                              selectedId: _selectedButtonIdList[index],
                              onSelect: (selectedSelectOption, isSelected) {
                                _selectedButtonIdList[index] = selectedSelectOption?.id;
                                selectedSkuList[index] = isSelected ? selectedSelectOption.value : [];
                                updateMatchedSku();
                              },
                            ),
                          ],
                        );
                      }),

                      // 数量
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 12, bottom: 8),
                            child: Text(
                              "数量",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                // decoration: TextDecoration.none,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          // Expanded(
                          //   child: Container(
                          //     alignment: Alignment.centerRight,
                          //     color: Colors.red,
                          //     child: AKCounter(),
                          //   ),
                          // ),

                          AKCounter(
                            defaultValue: 1,
                            min: 1,
                            max: 200,
                          ),
                        ],
                      ),

                      // 保障服务
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 12, bottom: 8),
                            child: Text(
                              widget.itemData?.yanBaoInfo?.yanBaoTitle,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                // decoration: TextDecoration.none,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ...widget.itemData?.yanBaoInfo?.yanBaoList?.map((yanBao) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:8.0,bottom: 6),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network(
                                    yanBao?.imgurl,
                                    width: 16,
                                    height: 16,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8),
                                    child: Text(
                                      yanBao?.sortName,
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        // decoration: TextDecoration.none,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 8),
                                    child: Text(
                                      "服务介绍",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        // decoration: TextDecoration.none,
                                        color: Colors.red[300],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.info_outline,
                                    size: 16,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ),

                            // 单选框
                            CholiceChipSkuItem(
                              selectOptions: yanBao?.products?.map((product) {
                                return SelectOption(
                                  id: product?.platformPid?.toString(),
                                  label: "${product?.sortName}  |  ￥${product?.price}",
                                );
                              })?.toList(),

                              onSelect: (selectedSelectOption, isSelected) {
                                print("$isSelected------$selectedSelectOption");
                              },
                            ),
                            // SizedBox(
                            //   width: double.infinity,
                            //   child: CholiceChipSelect(
                            //     selectOptions: yanBao?.products?.map((product) {
                            //       return SelectOption(
                            //         id: product?.platformPid?.toString(),
                            //         label:
                            //         "${product?.sortName} | ${product?.sortName}",
                            //       );
                            //     })?.toList(),
                            //   ),
                            // ),
                          ],
                        );
                      }),


                      // 京东服务
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 12, bottom: 8),
                            child: Text(
                              widget.itemData?.jdSerPlusInfo?.jdSerPlusTitle,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                // decoration: TextDecoration.none,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ...widget.itemData?.jdSerPlusInfo?.jdSerPlusList?.map((jdSerPlus) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top:8.0,bottom: 6),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.network(
                                    jdSerPlus?.scIconUrl,
                                    width: 16,
                                    height: 16,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8),
                                    child: Text(
                                      jdSerPlus?.scName,
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        // decoration: TextDecoration.none,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 8),
                                    child: Text(
                                      "服务介绍",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        // decoration: TextDecoration.none,
                                        color: Colors.red[300],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.info_outline,
                                    size: 16,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ),

                            // 单选框
                            CholiceChipSkuItem(
                              selectOptions: jdSerPlus?.products?.map((jdSerPlusProduct) {
                                return SelectOption(
                                  id: jdSerPlusProduct.serviceSku,
                                  label: "${jdSerPlusProduct?.serviceSkuShortName}  |  ￥${jdSerPlusProduct?.serviceSkuPrice}",
                                );
                              })?.toList(),

                              onSelect: (selectedSelectOption, isSelected) {
                                print("$isSelected------$selectedSelectOption");
                              },
                            ),
                            // SizedBox(
                            //   width: double.infinity,
                            //   child: CholiceChipSelect(
                            //     selectOptions: yanBao?.products?.map((product) {
                            //       return SelectOption(
                            //         id: product?.platformPid?.toString(),
                            //         label:
                            //         "${product?.sortName} | ${product?.sortName}",
                            //       );
                            //     })?.toList(),
                            //   ),
                            // ),
                          ],
                        );
                      }),
                    ],
                  )),
                ),

                // 加入购物车, 立即购买
                Container(
                  width: ScreenUtils.getScreenWidth(context) - 32,
                  height: 64,
                  color: Colors.white,
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(right: 10),
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
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: FlatButton(
                            onPressed: () {
                              ToastUtils.show("点击了 立即购买");
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            child: Text(
                              "立即购买",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            color: Colors.yellow[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

           /* // 加入购物车, 立即购买
            Align(
              child: Container(
                width: ScreenUtils.getScreenWidth(context) - 32,
                height: 64,
                color: Colors.white,
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Container(
                          padding: EdgeInsets.only(right: 10),
                          child: FlatButton(
                            onPressed: () {},
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
                        onTap: () {
                          ToastUtils.show("点击了 加入购物车");
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          child: FlatButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            child: Text(
                              "立即购买",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            color: Colors.yellow[600],
                          ),
                        ),
                        onTap: () {
                          ToastUtils.show("点击了 立即购买");
                        },
                      ),
                    ),
                  ],
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),*/
            // 关闭按钮
            Positioned(
              top: 0,
              right: 0,
              child: InkWell(
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(36)),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /*
   * 设置默认选中按钮
   */
  setDefaultSelectButton() {
    _selectedButtonIdList = widget.itemData?.colorSizeInfo?.colorSize?.map((colorSize) {
      return colorSize?.buttons[0].no;
    })?.toList();
  }

  /*
   * 设置默认选中颜色尺码
   */
  setDefaultSelectSku() {
    selectedSkuList = widget?.itemData?.colorSizeInfo?.colorSize?.map((colorSize) {
      return colorSize?.buttons[0]?.skuList;
    })?.toList();
  }

  // 刷新 SkuId
  updateMatchedSku() {
    setState(() {
      currentSkuId = getMatchedSku();
      print(currentSkuId);
    });
  }

  /*
   * 根据用户已选颜色尺码匹配出唯一sku
   */
  String getMatchedSku() {
    return selectedSkuList.reduce((current, next) {
      return current.toSet().intersection(next.toSet()).toList();
    }).first;
  }
}
