import 'package:flutter/material.dart';
import 'package:todo_list/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todoList = [
    ["Do Exercise", false],
    ["Do Programming", true],
    ["Fun Todo", true],
  ];

  void checkBoxChanged(bool? value, int index){
     setState(() {
       todoList[index][1] = !todoList[index][1];
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text("Todo List"),
        backgroundColor: Colors.yellow,
        leading: const Icon(Icons.menu),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (BuildContext context, int index) {
          return ToDoTile(
              taskName: todoList[index][0],
              taskCompleted: todoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
          );
        },

      ),
    );
  }
}
