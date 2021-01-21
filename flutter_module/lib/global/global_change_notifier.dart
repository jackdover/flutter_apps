import '../public.dart';

class GlobalChangeNotifier extends ChangeNotifier {
  GlobalInfo get _globalInfo => Global.globalInfo;

  @override
  void notifyListeners() {
    Global.saveGlobalInfo(); //保存 GlobalInfo 变更
    super.notifyListeners(); //通知依赖的Widget更新
  }
}

class ThemeModel extends GlobalChangeNotifier {
  // ------ ------ ------ brightness ------ ------ ------ //

  // false: Brightness.light, true: Brightness.dark
  bool get isDarkBrightness {
    if (_globalInfo == null) return false;
    if (_globalInfo.isDarkBrightness == null) return false;
    return _globalInfo.isDarkBrightness;
  }

  // 用户改变Brightness后，通知依赖项更新，
  set isDarkBrightness(bool brightness) {
    if (brightness != _globalInfo.isDarkBrightness) {
      _globalInfo.isDarkBrightness = brightness;
      notifyListeners();
    }
  }

  // ------ ------ ------ primarySwatch ------ ------ ------ //
  // primarySwatch更改只有在 brightness: Brightness.light 时有效; 若为dark, 看不出效果
  // 获取当前主题，如果为设置主题，则默认使用蓝色主题
  ColorSwatch get primarySwatch =>
      Global.primarySwatchs.firstWhere((e) => e.value == _globalInfo.primarySwatch, orElse: () => Colors.blue);

  // 主题改变后，通知其依赖项，新主题会立即生效
  set primarySwatch(ColorSwatch color) {
    if (color != primarySwatch) {
      _globalInfo.primarySwatch = color[500].value;
      notifyListeners();
    }
  }
}

class LocaleModel extends GlobalChangeNotifier {
  // 获取当前用户的APP语言配置Locale类，如果为null，则语言跟随系统语言
  Locale getLocale() {
    if (_globalInfo.locale == null) return null;
    var t = _globalInfo.locale.split("_");
    return Locale(t[0], t[1]);
  }

  // 获取当前Locale的字符串表示
  String get locale => _globalInfo.locale;

  // 用户改变APP语言后，通知依赖项更新，新语言会立即生效
  set locale(String locale) {
    if (locale != _globalInfo.locale) {
      _globalInfo.locale = locale;
      notifyListeners();
    }
  }
}

/*
class UserModel extends GlobalChangeNotifier {
  User get user => _profile.user;

  // APP是否登录(如果有用户信息，则证明登录过)
  bool get isLogin => user != null;

  //用户信息发生变化，更新用户信息并通知依赖它的子孙Widgets更新
  set user(User user) {
    if (user?.login != _profile.user?.login) {
      _profile.lastLogin = _profile.user?.login;
      _profile.user = user;
      notifyListeners();
    }
  }
}*/
