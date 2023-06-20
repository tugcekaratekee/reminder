import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder/model/todo_class.dart';
import 'package:reminder/view/todo_item_detail_page.dart';
import 'package:reminder/widget/bottom_sheet_widget.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key, required this.item});

  final TodoItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) => ModalBottomSheetWidget(item),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: item.bgColor,
        ),
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .45,
                  child: Text(
                    item.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 25,
                      height: 1.2,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => TodoItemDetailPage(item),
                          ),
                        ),
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.time,
                  style: const TextStyle(color: Colors.white),
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
