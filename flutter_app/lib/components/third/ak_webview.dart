// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import '../../utils/screen_utils.dart';
import '../../utils/toast_utils.dart';
import 'package:webview_flutter/webview_flutter.dart';

const String kNavigationExamplePage = '''
<!DOCTYPE html><html>
<head><title>Navigation Delegate Example</title></head>
<body>
<p>
The navigation delegate is set to block navigation to the youtube website.
</p>
<ul>
<ul><a href="https://www.youtube.com/">https://www.youtube.com/</a></ul>
<ul><a href="https://www.google.cn/">https://www.google.cn/</a></ul>
</ul>
</body>
</html>
''';

class AKWebView extends StatefulWidget {
  static const String routeName = "/AKWebView";

  final String url;

  // var arguments = {"url": url,"title": title};

  const AKWebView({Key key, this.url}) : super(key: key);

  @override
  _AKWebViewState createState() => _AKWebViewState();
}

class _AKWebViewState extends State<AKWebView> {

  final Completer<WebViewController> _controller = Completer<WebViewController>();
  WebViewController _webViewController;

  double _webViewHeight = 1;

  @override
  void initState() {
    super.initState();

    //todo 处理空页面

    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // We're using a Builder here so we have a context that is below the Scaffold
      // to allow calling Scaffold.of(context) so we can show a snackbar.
      child: Builder(builder: (BuildContext context) {
        return Container(
          // height: _webViewHeight,
          height: 10008,
          width: ScreenUtils.getScreenWidth(context),
          child: WebView(
            // initialUrl: 'https://flutter.cn',
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _webViewController = webViewController;
              _controller.complete(webViewController);
            },
            // TODO(iskakaushik): Remove this when collection literals makes it to stable.
            // ignore: prefer_collection_literals
            javascriptChannels: <JavascriptChannel>[
              _toasterJavascriptChannel(context),
            ].toSet(),
            navigationDelegate: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                print('blocking navigation to $request}');
                return NavigationDecision.prevent;
              }
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
            },
            onPageStarted: (String url) {
              print('Page started loading: $url');
            },
            onPageFinished: (String url) {
              print('Page finished loading: $url');
              _onPageFinished(context,url);
            },
            gestureNavigationEnabled: false,
          ),
        );
      }),
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          // ignore: deprecated_member_use
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

  Future<void> _onPageFinished(BuildContext context, String url) async {
    double newHeight = double.parse(
      await _webViewController.evaluateJavascript("document.documentElement.scrollHeight;"),
    );
    setState(() {
      _webViewHeight = newHeight;
      print('------_webViewHeight: $_webViewHeight');
    });
  }
}

