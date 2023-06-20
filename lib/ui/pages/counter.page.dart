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
          "Counter",
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Text(
        count.toString(),
        style: Theme.of(context).textTheme.headlineLarge,
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => {
              setState(() {
                count++;
              }),
              print("button pressed count : $count")
            },
          ),
          SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () => {
              setState(() {
                if (count != 0) {
                  count--;
                }
              }),
              print("button pressed count : $count")
            },
          ),
        ],
      ),
    );
  }
}
