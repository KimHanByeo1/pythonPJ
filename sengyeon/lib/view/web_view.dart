import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pj_test/widget/web_view/dropdown.dart';
import 'package:pj_test/widget/web_view/webview.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    StreamController<String> controller = StreamController();
    return Scaffold(
      body: Stack(
        children: [
          WebViewWidgetPage(stream: controller.stream),
          DropDownPage(controller: controller),
        ],
      ),
    );
  }
}
