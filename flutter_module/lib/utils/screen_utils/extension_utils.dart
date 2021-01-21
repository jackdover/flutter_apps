import 'auto_size.dart';

/// Dart从2.7.0开始，可以通过extension来给现有的类(自定义的类、第三方库的类、系统的类)进行扩展

/// 对 int 类型扩展 : 屏幕适配: px, pt
extension IntFit on int {
  double get px {
    return AutoSize.setPx(this.toDouble());
  }

  double get pt {
    return AutoSize.setPt(this.toDouble());
  }
}

/// 对 double 类型扩展 : 屏幕适配: px, pt
extension DoubleFit on double {
  double get px {
    return AutoSize.setPx(this);
  }

  double get pt {
    return AutoSize.setPt(this);
  }
}
