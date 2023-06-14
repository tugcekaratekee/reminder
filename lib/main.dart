import 'package:flutter/material.dart';
import 'package:reminder/data/todo_class.dart';

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
      bgColor: Color(0xFF6A6BDF),
    ),
    TodoItem(
      title: 'Some Project Discussion',
      time: '09:00 AM - 11:00 PM',
      bgColor: Color.fromARGB(255, 7, 126, 55),
    ),
    TodoItem(
      title: 'Future Project Discussion',
      time: '09:00 AM - 11:00 PM',
      bgColor: Color.fromARGB(255, 66, 73, 69),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
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
                  itemBuilder: (context, index) => TodoWidget(
                    title: todoItem[index].title,
                    time: todoItem[index].time,
                    bgColor: todoItem[index].bgColor,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class TodoWidget extends StatelessWidget {
  const TodoWidget({
    super.key,
    required this.title,
    required this.time,
    required this.bgColor,
  });

  final String title;
  final String time;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          padding: EdgeInsets.all(20),
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
                title,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Need to break down a new project discussion content into proper information engineering and make all content are fixed Need to break down a new project discussion content into proper information engineering and make all content are fixed.',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        padding: const EdgeInsets.all(12),
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .45,
                  child: Text(
                    title,
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
                    onPressed: () {},
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
                  time,
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
