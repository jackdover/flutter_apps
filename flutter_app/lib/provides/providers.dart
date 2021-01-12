
import 'package:flutter/material.dart';

////// ------ ------ ------ providers
///
/// InheritedWidget (of方法,updateShouldNotify方法)
/// Provider (ChangeNotifier-ChangeNotifierProvider-Consumer-Selector)
/// MultiProvider

/// 切换底部导航
class CurrentIndexProvider with ChangeNotifier {
  int currentIndex = 0;

  void changeIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
}


class CounterProvider extends ChangeNotifier {
  // 私有的_counter，并且提供了getter和setter
  int _counter = 0;

  int get counter {
    return _counter;
  }

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }

  void increment() {
    _counter++;
    notifyListeners();
  }
}



