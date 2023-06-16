import 'package:flutter/material.dart';
import 'package:todo_app/ui/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("First App"), backgroundColor: Colors.amber),
      body: Center(
          child: Text(
        """Body Centre  Lorem ipsum dolor 
          primis facilisi litora aliquet mauris massa natoque """,
        // style: TextStyle(fontSize: 28, color: Colors.black),
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,
        selectionColor: Colors.amber,
      )),
    );
  }
}
