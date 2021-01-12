import 'package:flutter/material.dart';
import '../../api/data_factory.dart';
import '../../api/response/category/subbanner_entity.dart';
import '../../api/response/category/subcategory_entity.dart';
import '../../config/values/constant.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Subcategory extends StatefulWidget {
  @override
  _SubcategoryState createState() => _SubcategoryState();
}

class _SubcategoryState extends State<Subcategory> {
  SubCategoryEntity subCategoryBean;

  List<CmsPromotionsList> subBannerList;

  @override
  void initState() {
    super.initState();
    _initSubcategoryTabBanner();
    _initSubcategoryTab();
  }

  // 初始化子分类轮播
  _initSubcategoryTabBanner() async {
    // var response = await AKApi().AKDio.post(ApiConfig.subCategoryBannerList);
    // var data = response.data;
    SubBannerEntity dataBean=  await DataFactory.data_Entity(AssetJsonName.subCategoryBannerList ) as SubBannerEntity;
    this.setState(() {
      this.subBannerList =dataBean.cmsPromotionsList;
    });
  }

  // 初始化子分类
  _initSubcategoryTab() async {
    // var response = await AKApi().AKDio.post(ApiConfig.subcategoryList, /*data: {
    //   "categoryId": "11",
    // }*/);
    // var data = response.data;
    // print("------SubcategoryTabBean:${data}");

    SubCategoryEntity dataBean=  await DataFactory.data_Entity(AssetJsonName.subcategoryList ) as SubCategoryEntity;
    this.setState(() {
      this.subCategoryBean = dataBean;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      height: MediaQuery.of(context).size.height - 150,
      // color: Color(0xFFFCFDFE),
      color: Theme.of(context).canvasColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // 轮播
            _buildBanner(),
            // 子分类
            ..._buildSubcategoryList(),
          ],
        ),
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(12, 8, 12, 6),
      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(12),
        // color: Colors.red,
        image: DecorationImage(
          image: NetworkImage(Constant.JDImg),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              subBannerList[index].imageUrl,
              fit: BoxFit.cover,
            );
          },
          itemCount: subBannerList.length,
          pagination: new SwiperPagination(
            // 分页指示器
            alignment: Alignment.bottomCenter, // 位置 Alignment.bottomCenter 底部中间
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 2), // 距离调整
            builder: DotSwiperPaginationBuilder(
              // 指示器构建
              space: 5,
              // 点之间的间隔
              size: 6,
              // 没选中时的大小
              activeSize: 8,
              // 选中时的大小
              color: Colors.black54,
              // 没选中时的颜色
              activeColor: Colors.white, // 选中时的颜色
            ),
          ),
          // control: new SwiperControl(),
          autoplay: true,
          onTap: (index) { //todo
            print("banner------$index------jump:${subBannerList[index].mPageAddress}");
          },
        ),
      ),
    );
  }

  List<Widget> _buildSubcategoryList() {
    if (subCategoryBean == null || subCategoryBean.data==null) {
      return <Widget>[
        Center(
          child: CircularProgressIndicator(),
        )
      ];
    }
    return subCategoryBean?.data?.map((item) {
      return Container(
        margin: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 30,
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              color: Colors.white,
              child: Text(
                item?.name,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: item.rankingFlag ? 1 / 1.3 : 1,
              children: item?.catelogyList?.map((subcategory) {
                return InkWell(
                  child: Container(
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Image.network(
                          subcategory.icon,
                          height: 70,
                        ),
                        Container(
                          // height: 30,
                          alignment: Alignment.center,
                          child: Text(
                            subcategory.name,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black,
                              // color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        // Offstage(
                        //   // offstage: !item.rankingFlag,
                        //   offstage:true,
                        //   child: Container(
                        //     height: 40,
                        //     alignment: Alignment.center,
                        //     child: Text(
                        //       subcategory.name,
                        //       style: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 12,
                        //         color: Colors.red,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  onTap: (){
                    print("d点击了 ${subcategory.name}");
                  },
                );
              })?.toList(),
            ),
          ],
        ),
      );
    })?.toList();

    // return <Widget>[
    //   Center(
    //     child: Text("buweukong"),
    //   )
    // ];
  }
}
