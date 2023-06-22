import 'package:flutter/material.dart';
import 'package:todo_app/ui/layouts/action_section.dart';
import 'package:todo_app/ui/layouts/barheader_section.dart';
import 'package:todo_app/ui/layouts/header_section.dart';
import 'package:todo_app/ui/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("Home"), backgroundColor: Colors.amber),
      body: Column(
        children: [
          // header section
          HeaderSection(),
          // header bars section buttons minis
          BarHeaaderSection(),
          // section action
          ActionSection()
        ],
      ),
    );
  }
}
