import 'package:flutter/material.dart';
import 'package:reminder/model/todo_class.dart';

final List<String> days = [
  'Today (8)',
  'Tomorrow (5)',
  '26 Aug (5)',
  '27 Aug (0)',
  '29 Aug (55)',
];

final List<TodoItem> todoItem = [
  TodoItem(
    title: 'New Project Discussion',
    time: '09:00 AM - 11:00 PM',
    bgColor: const Color(0xFF6A6BDF),
  ),
  TodoItem(
    title: 'Some Project Discussion',
    time: '09:00 AM - 11:00 PM',
    bgColor: const Color.fromARGB(255, 7, 126, 55),
  ),
  TodoItem(
    title: 'Future Project Discussion',
    time: '09:00 AM - 11:00 PM',
    bgColor: const Color.fromARGB(255, 66, 73, 69),
  ),
];
