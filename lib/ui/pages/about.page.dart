import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Text(
        "About apge body content",
        style: TextStyle(fontSize: 28),
      )),
    );
  }
}
