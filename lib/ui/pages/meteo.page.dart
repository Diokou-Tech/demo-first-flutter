import 'package:flutter/material.dart';

class MeteoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meteo"),
      ),
      body: Center(
          child: Text(
        "Meteo Page Home",
        style: TextStyle(fontFamily: "cambria", fontSize: 30),
      )),
    );
  }
}
