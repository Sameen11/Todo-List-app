import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController txtController = TextEditingController();
  String greeting = "";
  void printValue(){
    setState(() {
      greeting = "Hello, ${txtController.text}";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo List"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greeting),
              TextField(
                controller: txtController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type Your Name",
                ),
                ),
              ElevatedButton(onPressed: printValue, child: const Text("Tap")),
            ],
          ),
        ),
      ),
    );
  }
}
