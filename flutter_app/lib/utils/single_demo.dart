class Singleton {
  static final Singleton _singleton = Singleton._internal();

  //工厂构造函数
  factory Singleton() {
    return _singleton;
  }

  //构造函数私有化，防止被误创建
  Singleton._internal();
}



////// 使用
///
/// main() {
//   var s1 = Singleton();
//   var s2 = Singleton();
//   print(identical(s1, s2));  // 相等
//   print(s1 == s2);           // 相同对象
// }