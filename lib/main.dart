import 'package:flutter/material.dart';
import 'package:todo_app/ui/pages/about.page.dart';
import 'package:todo_app/ui/pages/counter.page.dart';
import 'package:todo_app/ui/pages/home.page.dart';
import 'package:todo_app/ui/pages/todo.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "/home": (context) => HomePage(),
          "/about": (context) => AboutPage(),
          "/todo": (context) => TodoPage(),
          "/counter": (context) => CounterPage(),
        },
        theme: ThemeData(
            primarySwatch: Colors.amber, primaryColor: Colors.deepOrange),
        home: HomePage(),
        initialRoute: "/home");
  }
}
