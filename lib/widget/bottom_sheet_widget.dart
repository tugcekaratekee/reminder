import 'package:flutter/material.dart';
import 'package:reminder/model/todo_class.dart';
import 'package:reminder/widget/bottom_sheet_info_widget.dart';
import 'package:reminder/widget/guest_widget.dart';

class ModalBottomSheetWidget extends StatelessWidget {
  const ModalBottomSheetWidget(
    this.item, {
    super.key,
  });

  final TodoItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .75,
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
              ],
            ),
            Text(
              item.title,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              item.desc,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  const BottomSheetInfoWidget(
                    icon: Icon(Icons.calendar_month),
                    title: "Date",
                    desc: 'Tuesday, 24 Aug',
                  ),
                  BottomSheetInfoWidget(
                    icon: const Icon(Icons.alarm),
                    title: "Time",
                    desc: item.time,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  BottomSheetInfoWidget(
                    icon: Icon(Icons.person),
                    title: "Host",
                    desc: 'tuçiko',
                  ),
                  BottomSheetInfoWidget(
                    icon: Icon(Icons.notifications),
                    title: "Notify Before",
                    desc: '15 minutes',
                  ),
                ],
              ),
            ),
            const Text(
              'Meeting Platform',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'zoom',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'ID: 862 229 572',
                    style: TextStyle(color: Colors.grey.shade100),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Guest (4)',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const GuestWidget(),
            const GuestWidget(),
            const GuestWidget(),
            const GuestWidget(),
          ],
        ),
      ),
    );
  }
}
