import 'package:flutter/material.dart';
import 'package:my_todo/ui/views/home_todo.dart';

void main() {
  runApp(const MyTodo());
}

class MyTodo extends StatelessWidget {
  const MyTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeTodo(),
    );
  }
}
