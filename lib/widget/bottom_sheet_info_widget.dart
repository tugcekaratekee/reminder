import 'package:flutter/material.dart';

class BottomSheetInfoWidget extends StatelessWidget {
  const BottomSheetInfoWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
  });

  final Icon icon;
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 5, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                icon,
                Text(title),
              ],
            ),
            Text(desc)
          ],
        ),
      ),
    );
  }
}
