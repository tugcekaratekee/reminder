import 'package:flutter/material.dart';

class DayButton extends StatelessWidget {
  const DayButton({super.key, required this.title, required this.isActive});

  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isActive ? Colors.black : Colors.grey.shade200),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      child: Text(
        title,
        style: TextStyle(color: isActive ? Colors.white : Colors.grey),
      ),
    );
  }
}
