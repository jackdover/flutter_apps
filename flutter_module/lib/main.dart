import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'public.dart';

void main() => Global.init().then((e) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // ListenableProvider: 用来暴露可监听的对象，该provider将会监听对象的改变以便及时更新组件状态
      // ChangeNotifierProvider: ListerableProvider依托于ChangeNotifier的一个实现，它将会在需要的时候自动调用ChangeNotifier.dispose方法
      providers: /*<ListenableProvider>*/ [
        ChangeNotifierProvider.value(value: ThemeModel()),
        ChangeNotifierProvider.value(value: LocaleModel()),
        // ChangeNotifierProvider.value(value: UserModel()),
      ],
      child: Consumer2<ThemeModel, LocaleModel>(
        builder: (BuildContext context, themeModel, localeModel, Widget child) {
          print("// ------ ------ ------APP build ------ ------ ------ //");
          return MaterialApp(
            // ------ ------ ------ 多主题 Theme ------ ------ ------ //
            theme: ThemeData(
              // brightness: Brightness.dark,
              brightness: themeModel.isDarkBrightness ? Brightness.dark : Brightness.light,
              primarySwatch: themeModel.primarySwatch,
            ),

            // ------ ------ ------ 多语言 locale ------ ------ ------ //

            // （本地化委托） : 本地化的代理类
            localizationsDelegates: [
              // 原生代理类
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              // 自定义的代理类
              AKLocalizationsDelegate(),
            ],
            // （支持区域） : 传入支持的语种数组
            supportedLocales: [
              // 传入两个参数，语言代码，国家代码
              const Locale('en', 'US'), // 美国英语
              const Locale('zh', 'CN'), // 中文简体
              //其它Locales
            ],
            // (地点) : 当前区域，如果为null则使用系统区域
            locale: localeModel.getLocale(),
            // （区域分辨回调） : 当传入的是不支持的语种，可以根据这个回调，返回相近,并且支持的语种
            localeResolutionCallback: (Locale _locale, Iterable<Locale> supportedLocales) {
              print("_locale $_locale");
              if (localeModel.getLocale() != null) {
                //如果已经选定语言，则不跟随系统
                return localeModel.getLocale();
              } else {
                // 跟随系统
                Locale locale;
                if (supportedLocales.contains(_locale)) {
                  locale = _locale;
                } else {
                  //如果系统语言不是中文简体或美国英语，则默认使用美国英语
                  locale = Locale('en', 'US');
                }
                return locale;
              }
            },
            // 英语系的国家指定同一个locale, 如美国、英国、澳大利亚等，这些英语系国家虽然说的都是英语，但也会有一些区别。
            // 如果我们的APP只想提供一种英语（如美国英语）供所有英语系国家使用, 做兼容
            // localeListResolutionCallback: (List<Locale> locales, Iterable<Locale> supportedLocales){
            // 判断当前locale是否为英语系国家，如果是直接返回Locale('en', 'US')
            // },

            // 标题 : 该标题出现在 Android：任务管理器的程序快照之上;  IOS: 程序切换管理器中
            // title: AKLocalizations.of(context).title, // 报错, 用下面的
            // （生成本地化标题） : 跟上面的title一样，但含有一个context参数 // 用于做本地化
            onGenerateTitle: (context) {
              return AKLocalizations.of(context).title;
            },

            // ------ ------ ------ 路由 Route ------ ------ ------ //
            // routes（注册路由）
            // （初始路由） : 初始化的时候加载的路由
            initialRoute: '/',
            // （生成路由）
            onGenerateRoute: onGenerateRoute,
            // （未知路由）
            onUnknownRoute: onUnknownRoute,
          );
        },
      ),
    );
  }
}
