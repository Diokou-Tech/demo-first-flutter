import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter Page",
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Text(
        count.toString(),
        style: Theme.of(context).textTheme.headlineLarge,
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          setState(() {
            count++;
          }),
          print("button pressed count : $count")
        },
      ),
    );
  }
}
