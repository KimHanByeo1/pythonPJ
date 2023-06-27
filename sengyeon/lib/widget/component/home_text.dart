import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;

  const MyText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24, // 글꼴 크기
        fontWeight: FontWeight.bold, // 글꼴 가중치
        fontStyle: FontStyle.italic, // 글꼴 스타일
        letterSpacing: 1.5, // 글자 간격
        wordSpacing: 5, // 단어 간격
        height: 1.5, // 줄 간격
        shadows: [
          Shadow(
            offset: Offset(1, 1),
          ),
        ],
      ),
    );
  }
}
