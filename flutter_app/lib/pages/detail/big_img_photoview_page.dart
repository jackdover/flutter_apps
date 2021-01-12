import 'package:flutter/material.dart';
import '../../api/response/detail/ItemInfoResponseEntity.dart';
import '../../utils/screen_utils.dart';
import '../../utils/toast_utils.dart';

import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class BigImagePhotoViewPage extends StatefulWidget {
  static const String routeName = "/BigImagePhotoViewPage";

  final Map arguments;

  const BigImagePhotoViewPage({Key key, this.arguments}) : super(key: key);

  @override
  _BigImagePhotoViewPageState createState() => _BigImagePhotoViewPageState(/*arguments: this.arguments*/);
}

class _BigImagePhotoViewPageState extends State<BigImagePhotoViewPage> {
  int _currIndex = 0;

  int _pageIndex = 0;
  List<WareImage> _imageList;

  //
  // Map arguments;
  //  方式2: 通过构造获取传递的参数: 注意 构造调用时 要把参数传过来 _BigImagePhotoViewPageState( arguments: this.arguments );
  // _BigImagePhotoViewGalleryState({this.arguments});
  //

  @override
  void initState() {
    super.initState();

    // 方式1: 通过widget获取传递过来的参数
    // 接收的参数
    _pageIndex = widget.arguments["_pageIndex"];
    _imageList = widget.arguments["imageList"];

    _pageIndex = _pageIndex < _imageList.length ? _pageIndex : 0;
    _currIndex = _pageIndex;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: Container(
              child: _buildImgBigPhotoView(),
            ),
          ),
        ),
      ),
      // 监听系统返回按钮的点击（给Scaffold包裹一个WillPopScope）: WillPopScope有一个onWillPop的回调函数，当我们点击返回按钮时会执行
      onWillPop: () {
        // 返回的参数
        Navigator.of(context).pop({"_backPageIndex": _pageIndex});
        return Future.value(false);
      },
    );
  }

  Widget _buildImgBigPhotoView() {
    return Container(
        // height: ScreenUtils.getScreenHeight(context),
        height: ScreenUtils.getScreenWidth(context),
        child: Stack(
          children: [
            Container(
              // height: ScreenUtils.getScreenWidth(context),
              child: PhotoViewGallery.builder(
                scrollPhysics: const BouncingScrollPhysics(),
                builder: (BuildContext context, int index) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider: NetworkImage(_imageList[index].big),
                    //hero动画tag 不设置或null为不启用hero动画
                    heroAttributes: PhotoViewHeroAttributes(tag: "${_imageList[index].big}:$index"),
                    initialScale: PhotoViewComputedScale.contained * 0.9,
                    //最小缩放倍数
                    minScale: PhotoViewComputedScale.contained * 0.5,
                    //最大缩放倍数
                    maxScale: PhotoViewComputedScale.contained * 3.0,
                  );
                },
                itemCount: _imageList.length,
                loadingBuilder: (context, event) => Center(
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    child: CircularProgressIndicator(
                      value: event == null ? 0 : event.cumulativeBytesLoaded / event.expectedTotalBytes,
                    ),
                  ),
                ),
                backgroundDecoration: BoxDecoration(
                  color: Colors.white,
                ),
                pageController: PageController(initialPage: _pageIndex),
                onPageChanged: (index) {
                  ToastUtils.show("$index");
                  setState(() {
                    _currIndex = index;
                  });
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 72,
                height: 36,
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.only(bottom: 6),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${_currIndex + 1}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "/",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "${_imageList.length}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
