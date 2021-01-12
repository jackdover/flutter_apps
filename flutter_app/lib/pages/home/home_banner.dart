import 'package:flutter/material.dart';
import '../../components/third/ak_webview_page.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeBanner extends StatefulWidget {
  final List bannerList;

  final double height;
  final double radius;

  const HomeBanner({Key key, @required this.bannerList, this.height = 200.0, this.radius = 12.0}) : super(key: key);

  @override
  _HomeBannerState createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return _buildBanner();
  }

  Widget _buildBanner() {
    return Container(
      height: widget.height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.radius),
        child: Swiper(
          key: UniqueKey(),
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              widget.bannerList[index]['horizontalImag'],
              fit: BoxFit.cover,
            );
          },
          itemCount: widget.bannerList.length,
          pagination: SwiperPagination(
            // 分页指示器
            alignment: Alignment.bottomCenter, // 位置 Alignment.bottomCenter 底部中间
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 4), // 距离调整
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
          // control: SwiperControl(color: Colors.pink,),
          // viewportFraction: 1,
          // scale: 1,
          autoplay: true,
          onTap: (index) {
            var url = widget.bannerList[index]['jump']['params']['url'];
            var title = widget.bannerList[index]['title'];
            print("banner------$index ------jumpUrl:${url}");
            // Navigator.pushNamed(context, '/webview', arguments: {
            //   'url': this._bannerList[index].jumpUrl
            // });

            var arguments = {"url": url, "title": title};
            // AKWebViewPage(url:'https://flutter.cn',title: "我是web标题",)

            Navigator.of(context).pushNamed(AKWebViewPage.routeName, arguments: arguments);
          },
        ),
      ),
    );
  }
}
