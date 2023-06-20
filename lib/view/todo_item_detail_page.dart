import 'package:flutter/material.dart';
import 'package:reminder/model/todo_class.dart';

class TodoItemDetailPage extends StatelessWidget {
  const TodoItemDetailPage(
    this.item, {
    super.key,
  });

  final TodoItem item;
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController =
        TextEditingController(text: item.title);
    TextEditingController descController =
        TextEditingController(text: item.desc);
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Task'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingTitle("title"),
            Container(
              height: 50,
              child: TextField(
                readOnly: true,
                controller: titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.grey)),
                  isDense: true,
                ),
              ),
            ),
            HeadingTitle("Description"),
            Container(
              height: 150,
              child: TextField(
                readOnly: true,
                expands: true,
                maxLines: null,
                controller: descController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.grey)),
                  isDense: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeadingTitle extends StatelessWidget {
  const HeadingTitle(
    this.title, {
    super.key,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
      padding: EdgeInsets.only(
        top: 8,
        bottom: 8,
      ),
    );
  }
}
