import 'package:flutter/material.dart';
import '../api/api_config.dart';
import '../api/api_manager.dart';
import '../api/data_factory.dart';
import '../api/response/HomeGoods.dart';
import '../api/response/category/categorylist_entity.dart';
import '../pages/category/master_category.dart';
import '../pages/category/sub_category.dart';
import '../pages/category/sub_category_tab.dart';
import '../utils/toast_utils.dart';
import '../pages/tabbar_tabview_nestscrollview.dart';

class CategoryPage extends StatefulWidget {
  static const String routeName = "/CategoryPage";

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  static const String TAG = "CategoryPage";

  List<CatelogyList> _categoryList = [];

  bool loading = false;

  @override
  void initState() {
    super.initState();
    print("${TAG}------initState------");

    _initData();
  }

  _initData() async {
    loading = true;
    await Future.wait(<Future>[
      _getCategory(),
      // _getSubcategoryList(""),
    ]);
    loading = false;
  }

  // 获取一级分类
  _getCategory() async {
    // var response = await AKApi().AKDio.post(ApiConfig.MasterCategory);
    // var data = response.data;

    CategoryListEntity resultData = await DataFactory.data_Entity(AssetJsonName.MasterCategory) as CategoryListEntity;
    this.setState(() {
      this._categoryList = resultData.catelogyList;
    });
  }

  // 分类
  _getSubcategoryList(String categoryId) async {
    // var response = await AKApi().AKDio.post(ApiConfig.subcategoryList, data: {
    //   "categoryId": categoryId,
    // });
    // var data = response.data;
    // this.setState(() {
    //   // this.categoryList = CategoryList.fromJson(data).catelogyList;
    // });
  }

  @override
  Widget build(BuildContext context) {
    print("${TAG}------build------");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.crop_free),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            ToastUtils.show("扫一扫");
            // scanQRCode();//todo
          },
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)), color: Color(0xFFf8f8f8)),
          child: TextField(
            onTap: () {
              print("点击了search");
              // showSearch(context: context, delegate: SearchBarDelegate());
            },
            decoration: InputDecoration(
              hintText: '遇见更好的自己',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              suffixIcon: Icon(Icons.camera_alt),
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xFF444444),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.message,
              color: Color(0xFF595959),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Row(
              children: <Widget>[
                MasterCategory(
                  categoryList: _categoryList,
                  onItemClick: (int id) {
                    print("点击了左侧分类$id");
                    //todo 动态加载右侧分类
                    _getSubcategoryList(id.toString());
                  },
                ),
                Expanded(flex: 1, child: SubcategoryTab()),
              ],
            ),
    );
  }
}
