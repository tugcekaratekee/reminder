import 'package:flutter/material.dart';

class TodoItem {
  String title;
  String time;
  String desc;
  Color bgColor;

  TodoItem({
    required this.title,
    required this.time,
    required this.desc,
    required this.bgColor,
  });
}
