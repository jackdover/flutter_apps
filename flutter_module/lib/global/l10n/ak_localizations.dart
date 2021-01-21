import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//Locale资源类
class AKLocalizations {
  AKLocalizations(this.isZh);

  //是否为中文
  bool isZh = false;

  //为了使用方便，我们定义一个静态方法
  static AKLocalizations of(BuildContext context) {
    return Localizations.of<AKLocalizations>(context, AKLocalizations);
  }

  //Locale相关值，title为应用标题
  String get title {
    return isZh ? "Flutter应用" : "Flutter APP";
  }

  String get home => isZh ? "首页" : "home";

  String get language => isZh ? "语言" : "language";

  String get login => isZh ? "登录" : "login";

  String get auto => isZh ? "自动" : "auto";
//... 其它的值
}

//Locale代理类
class AKLocalizationsDelegate extends LocalizationsDelegate<AKLocalizations> {
  const AKLocalizationsDelegate();

  //是否支持某个Local
  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  // Flutter会调用此类加载相应的Locale资源类
  @override
  Future<AKLocalizations> load(Locale locale) {
    return SynchronousFuture<AKLocalizations>(
        AKLocalizations(locale.languageCode == "zh")
    );
  }

  @override
  bool shouldReload(AKLocalizationsDelegate old) => false;
}

