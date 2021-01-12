import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../api/response/banner_entity.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerSwiperDemo extends StatefulWidget {

  @override
  _BannerSwiperDemoState createState() => _BannerSwiperDemoState();
}

class _BannerSwiperDemoState extends State<BannerSwiperDemo> {

  List<BannerData> bannerList = [];
  String _bannerBgUrl = "http://via.placeholder.com/350x150";


  @override
  void initState() {
    super.initState();
    _getBanner();
  }

    _getBanner() async {
    Response response = await Dio().get("https://gank.io/api/v2/banners");
    print(response);
    BannerEntity data = BannerEntity.fromJson(response.data);

    this.setState(() {
      this.bannerList = data.data;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 120,
      padding: EdgeInsets.fromLTRB(12, 8, 12, 6),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(12),
        // color: Colors.red,
        image: DecorationImage(
          image: NetworkImage(_bannerBgUrl),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Swiper(
          // 解决bug:  https://blog.csdn.net/youtiankeng/article/details/107419322
          // https://blog.csdn.net/qq_20342111/article/details/105978460
          key: UniqueKey(),
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              bannerList[index].image,
              fit: BoxFit.cover,
            );
          },
          itemCount: bannerList.length,
          pagination: new SwiperPagination(),
          // control:  new SwiperControl(),
          autoplay: true,
          onTap: (index) {
            print("banner------$index");
          },
        ),
      ),
    );
  }
}
