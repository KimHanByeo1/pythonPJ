import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pj_test/model/web_view.dart';

class DropDownPage extends StatefulWidget {
  final StreamController<String> controller;
  const DropDownPage({super.key, required this.controller});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 70, 15, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: DropdownButton(
              hint: const SizedBox(
                width: 120,
                child: Center(
                  child: Text('업종선택'),
                ),
              ),
              items: WebViewModel.items
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Center(
                    child: Text(value),
                  ),
                );
              }).toList(),
              style: const TextStyle(color: Colors.black, fontSize: 16),
              borderRadius: BorderRadius.circular(15),
              onChanged: (value) {
                widget.controller.add(value ?? "http://127.0.0.1:5000/gender");
              },
              underline: Container(
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
