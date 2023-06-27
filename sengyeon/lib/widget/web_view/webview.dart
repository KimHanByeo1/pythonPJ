import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pj_test/model/web_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidgetPage extends StatefulWidget {
  final Stream<String> stream;
  // const WebViewWidgetPage({super.key, required this.stream});
  const WebViewWidgetPage({Key? key, required this.stream}) : super(key: key);

  @override
  State<WebViewWidgetPage> createState() => _WebViewWidgetPageState();
}

class _WebViewWidgetPageState extends State<WebViewWidgetPage> {
  // WebViewController는 callBack을 통해 화면구성을 한 후 사용이 가능하다
  // Completer 비동기 처리방식
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    widget.stream.listen((value) {
      if (value == '성별') {
        WebViewModel.siteName = 'http://127.0.0.1:5000/gender';
      } else if (value == '시간대별') {
        WebViewModel.siteName = 'http://127.0.0.1:5000/time';
      } else if (value == '연령대별') {
        WebViewModel.siteName = 'http://127.0.0.1:5000/age';
      } else {
        WebViewModel.siteName = 'http://127.0.0.1:5000/week';
      }
      _controller.future.then((value) => value.loadUrl(WebViewModel.siteName));
    });
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: WebViewModel.siteName,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
      // onPageFinished: (url) {
      //   setState(() {
      //     WebViewModel.isLoading = false;
      //   });
      // },
      // onPageStarted: (url) {
      //   setState(() {
      //     WebViewModel.isLoading = true;
      //   });
      // },
    );
  }
}
