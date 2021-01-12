/*
* rpx适配 工具类
* 工具类需要进行初始化，传入context
* 可以通过传入context，利用媒体查询获取屏幕的宽度和高度
* 也可以传入一个可选的参数，以什么尺寸作为设计稿
*
* 作者：coderwhy
* 链接：https://juejin.im/post/6844904176489594893
* 来源：掘金
* 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
*  */
import 'package:flutter/widgets.dart';

class MySizeFit {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double rpx;
  static double px;

  /* 工具类需要进行初始化，传入context
可以通过传入context，利用媒体查询获取屏幕的宽度和高度
也可以传入一个可选的参数，以什么尺寸作为设计稿 */

  /// 注意：必须在已经有MaterialApp的Widget中使用context，否则是无效的
  static void initialize(BuildContext context, {double standardWidth = 750}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;//375
    screenHeight = _mediaQueryData.size.height;
    rpx = screenWidth / standardWidth;
    px = screenWidth / standardWidth * 2;
    print("initialize------screenWidth:$screenWidth , screenHeight:$screenHeight");
    print("initialize------rpx:$rpx , px:$px");
  }

  // 按照像素px来设置
  static double setPx(double size) {
    return MySizeFit.rpx * size * 2;
  }

  // 按照rpx来设置
  static double setRpx(double size) {
    return MySizeFit.rpx * size;
  }
}

