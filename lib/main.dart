import 'package:flutter/material.dart';
import 'package:todo_app/themes/app_theme.dart';
import 'package:todo_app/widgets/todo_list_item.dart';

void main() {
  runApp(const MyTodoApp());
}

class MyTodoApp extends StatefulWidget {
  const MyTodoApp({Key? key}) : super(key: key);

  @override
  State<MyTodoApp> createState() => _MyTodoAppState();
}

class _MyTodoAppState extends State<MyTodoApp> {
  List todos = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: const [
              CircleAvatar(),
              SizedBox(width: 10),
              Text(
                "My Tasks",
                style: TextStyle(
                  color: AppColors.navyBlue,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sort,
                color: AppColors.navyBlue,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColors.navyBlue,
              ),
            ),
          ],
        ),
        body: Container(
          color: AppColors.bgColor,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            itemCount: todos.length,
            itemBuilder: (BuildContext context, int index) {
              var todo = todos[index];
              return TodoListItem(
                title: todo['title'],
                description: todo['description'],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 5);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightBlue,
          ),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: Row(
            children: const [
              Icon(
                Icons.check_circle,
                color: AppColors.navyBlue,
              ),
              SizedBox(width: 10),
              Text(
                "Completed",
                style: TextStyle(
                  color: AppColors.navyBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.navyBlue,
              ),
              Spacer(),
              Text(
                "24",
                style: TextStyle(
                  color: AppColors.navyBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
