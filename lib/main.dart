import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// page home
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Home"),
      ),
      body: const Center(
        child: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'sstandard dummy text ever since the 1500s, when an unknown printertook a galley of type and scrambled it to make a type specimen book.It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s withthe release of Letraset sheets containing Lorem Ipsum passages, and more recentlywith desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
        ),
      ),
    );
  }
}
