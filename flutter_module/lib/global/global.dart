import '../public.dart';

const String SP_KEY_GLOBAL_INFO = "GlobalInfo";

// 提供几套可选主题色: primarySwatch更改只有在 brightness: Brightness.light 时有效; 若为dark, 看不出效果
const _primarySwatchs = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

class Global {
  static SharedPreferences _sharePrefs;
  static GlobalInfo globalInfo = GlobalInfo();

  // 网络缓存对象
  // static NetCache netCache = NetCache();

  // 可选的主题列表
  static List<MaterialColor> get primarySwatchs => _primarySwatchs;

  // 是否为release版
  // static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  //初始化全局信息
  static Future init() async {
    // 建议在 main 方法加上这段代码，防止热重载报错，如果还是报错就必须点击下 run 按钮了
    WidgetsFlutterBinding.ensureInitialized();
    Provider.debugCheckInvalidValueType = null;

    // 获取存储的全局信息
    _sharePrefs = await SharedPreferences.getInstance();
    var _spGlobalInfo = _sharePrefs.getString(SP_KEY_GLOBAL_INFO);
    if (_spGlobalInfo != null) {
      try {
        globalInfo = GlobalInfo.fromJson(jsonDecode(_spGlobalInfo));
      } catch (e) {
        print("出错了------begin");
        print(e);
        print("出错了------end");
      }
    }

    /*  // 如果没有缓存策略，设置默认缓存策略
    profile.cache = profile.cache ?? CacheConfig()
      ..enable = true
      ..maxAge = 3600
      ..maxCount = 100;

    //初始化网络请求相关配置
    Git.init();*/
  }

  // 持久化 globalInfo 信息
  static saveGlobalInfo() => _sharePrefs.setString(SP_KEY_GLOBAL_INFO, jsonEncode(globalInfo.toJson()));
}
