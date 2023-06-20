import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo",
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Text(
        "Todo page content",
        style: Theme.of(context).textTheme.headlineMedium,
      )),
    );
  }
}
