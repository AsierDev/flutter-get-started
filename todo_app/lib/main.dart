import 'package:flutter/material.dart';
import 'package:todo_app/screens/home/home.dart';

void main() => runApp(new TodoApp());

class TodoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Tasks',
      theme: new ThemeData(primarySwatch: Colors.blueGrey),
      home: new MyHomePage(title: 'My Tasks'),
    );
  }
}
