import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pj_test/widget/calendar/search/listview.dart';
import 'package:pj_test/widget/calendar/search/search_text_field.dart';
import 'package:pj_test/widget/calendar/search/top_button.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    StreamController<List> controller = StreamController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(child: TopButton(controller: controller)),
              SizedBox(child: SearchTextField(controller: controller)),
              Expanded(child: SearchListView(stream: controller.stream)),
            ],
          ),
        ),
      ),
    );
  }
}
