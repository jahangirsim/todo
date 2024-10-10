import 'package:flutter/material.dart';
import 'package:todo3/todoscreen.dart';

class ToDo3App extends StatefulWidget {
  const ToDo3App({super.key});

  @override
  State<ToDo3App> createState() => _ToDo3AppState();
}

class _ToDo3AppState extends State<ToDo3App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade400,
          centerTitle: true,
          titleTextStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
        ),
inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.lightBlueAccent
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.greenAccent
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
          color: Colors.red
      ),
    ),
    disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.grey
        )
    )
)
      ),
      home: const ToDoScreen3(),
    );
  }
}
