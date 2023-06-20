import 'package:flutter/material.dart';
import 'package:todo_app/ui/layouts/ActionsSection.dart';
import 'package:todo_app/ui/layouts/BarheaderSection.dart';
import 'package:todo_app/ui/layouts/headerSection.dart';
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
