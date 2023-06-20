import 'package:flutter/material.dart';
import 'package:todo_app/config/global.params.dart';

import 'customDivider.widget.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      DrawerHeader(
          decoration: BoxDecoration(color: Colors.amberAccent),
          child: Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/profil.jpg"),
            ),
          )),
      ...(GlobalParams.menus).map((item) {
        return Column(
          children: [
            ListTile(
                title: Text(
                  "${item['title']}",
                  style: TextStyle(fontSize: 18, fontFamily: "cambria"),
                ),
                leading: item["icon"],
                trailing: Icon(
                  Icons.arrow_right,
                  color: Colors.black26,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "${item['route']}");
                }),
            CustomDivider()
          ],
        );
      }),
    ]));
  }
}
