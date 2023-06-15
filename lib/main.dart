import 'package:flutter/material.dart';
import 'package:reminder/data/sample.dart';
import 'package:reminder/widget/day_button.dart';
import 'package:reminder/widget/todo_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
          ),
          title: const Text('August'),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: const CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
            )
          ],
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Tuesday, 24 Aug'),
              const Text(
                'You Have 5 Meetings Today',
                style: TextStyle(fontSize: 40),
              ),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.grey)),
                    hintText: 'Search event, meeting, etc...',
                    hintStyle: const TextStyle(color: Colors.grey),
                    isDense: true,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: 500,
                height: 35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: days.length,
                  itemBuilder: (context, index) => DayButton(
                    title: days[index],
                    isActive: index == 0 ? true : false,
                  ),
                ),
              ),
              const Text(
                'It\'s a good day to start any event, you can make important decisions or plan them',
                style: TextStyle(color: Colors.grey),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: todoItem.length,
                  itemBuilder: (context, index) =>
                      TodoWidget(item: todoItem[index]),
                ),
              )
            ],
          ),
        ));
  }
}
