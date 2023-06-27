import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pj_test/widget/component/home_text.dart';

class Home extends StatelessWidget {
  final StreamController<int> controller;
  const Home({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          controller.add(1);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset('images/map.jpeg'),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 210,
                      left: 30,
                      child: MyText(text: '지도보러가기'),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          controller.add(2);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset('images/charttt.png'),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 210,
                      left: 30,
                      child: MyText(text: '차트보러가기'),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          controller.add(3);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'images/food2.webp',
                            fit: BoxFit.fill,
                            height: 250,
                            width: 400,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 210,
                      left: 30,
                      child: MyText(text: '농수산물 갸격표'),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          controller.add(4);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset('images/calendar.png'),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 270,
                      left: 30,
                      child: MyText(text: '가게부 작성'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
