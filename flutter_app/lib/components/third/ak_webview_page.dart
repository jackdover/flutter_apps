// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
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

class AKWebViewPage extends StatefulWidget {
  static const String routeName = "/AKWebViewPage";

  final Map arguments;

  // var arguments = {"url": url,"title": title};

  const AKWebViewPage({Key key, this.arguments}) : super(key: key);

  @override
  _AKWebViewPageState createState() => _AKWebViewPageState();
}

class _AKWebViewPageState extends State<AKWebViewPage> {
  String url;
    String title = '';

  final Completer<WebViewController> _controller = Completer<WebViewController>();
  WebViewController _webViewController;

  @override
  void initState() {
    super.initState();

    // 获取跳转传递参数
    url = widget.arguments != null ? widget.arguments['url'] : null;
    title = widget.arguments != null ? widget.arguments['title'] : '';
    //todo 处理空页面

    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // 拦截物理返回键
        _onBack();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: [
            NavigationControls(_controller.future),
          ],
        ),
        // We're using a Builder here so we have a context that is below the Scaffold
        // to allow calling Scaffold.of(context) so we can show a snackbar.
        body: Builder(builder: (BuildContext context) {
          return WebView(
            // initialUrl: 'https://flutter.cn',
            initialUrl: url,
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
            },
            gestureNavigationEnabled: true,
          );
        }),
      ),
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

  void _onBack() async {
    ToastUtils.show("back");
    if (_webViewController != null && await _webViewController.canGoBack()) {
      await _webViewController.goBack();
    } else {
      Navigator.of(context).pop();
    }
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture) : assert(_webViewControllerFuture != null);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder: (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady = snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;
        return Row(
          children: <Widget>[
            // IconButton(
            //   icon: const Icon(Icons.arrow_back_ios),
            //   onPressed: !webViewReady
            //       ? null
            //       : () async {
            //           if (await controller.canGoBack()) {
            //             await controller.goBack();
            //           } else {
            //             // ignore: deprecated_member_use
            //             Scaffold.of(context).showSnackBar(
            //               const SnackBar(content: Text("No back history item")),
            //             );
            //
            //             return;
            //           }
            //         },
            // ),
            // IconButton(
            //   icon: const Icon(Icons.arrow_forward_ios),
            //   onPressed: !webViewReady
            //       ? null
            //       : () async {
            //           if (await controller.canGoForward()) {
            //             await controller.goForward();
            //           } else {
            //             // ignore: deprecated_member_use
            //             Scaffold.of(context).showSnackBar(
            //               const SnackBar(content: Text("No forward history item")),
            //             );
            //             return;
            //           }
            //         },
            // ),
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: !webViewReady
                  ? null
                  : () {
                      controller.reload();
                    },
            ),
          ],
        );
      },
    );
  }
}
