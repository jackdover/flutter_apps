import 'px_rpx.dart';

/// Dart从2.7.0开始，可以通过extension来给现有的类(自定义的类、第三方库的类、系统的类)进行扩展

/// 对 int 类型扩展 : 屏幕适配: px, rpx
extension IntFit on int {
  double get px {
    return MySizeFit.setPx(this.toDouble());
  }

  double get rpx {
    return MySizeFit.setRpx(this.toDouble());
  }
}
/// 对 double 类型扩展 : 屏幕适配: px, rpx
extension DoubleFit on double {
  double get px {
    return MySizeFit.setPx(this);
  }

  double get rpx {
    return MySizeFit.setRpx(this);
  }
}





