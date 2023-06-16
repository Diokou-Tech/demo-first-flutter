import 'package:flutter/material.dart';
import 'package:todo_app/ui/widgets/customDivider.widget.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/profil.jpg"),
                ),
              )),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18, fontFamily: "cambria"),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.amber,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black26,
            ),
            onTap: () =>
                {print("tap on home"), Navigator.pushNamed(context, "/home")},
          ),
          CustomDivider(),
          ListTile(
            title: Text(
              "About",
              style: TextStyle(fontSize: 18, fontFamily: "cambria"),
            ),
            leading: Icon(
              Icons.question_mark,
              color: Colors.amber,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black26,
            ),
            onTap: () => {
              print("tap on about"),
              Navigator.pop(context),
              Navigator.pushNamed(context, "/about")
            },
          ),
          CustomDivider(),
          ListTile(
            title: Text(
              "Todo",
              style: TextStyle(fontSize: 18, fontFamily: "cambria"),
            ),
            leading: Icon(
              Icons.app_settings_alt,
              color: Colors.amber,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black26,
            ),
            onTap: () => {
              print("tap on todo"),
              Navigator.pop(context),
              Navigator.pushNamed(context, "/todo")
            },
          ),
          CustomDivider(),
          ListTile(
            title: Text(
              "counter",
              style: TextStyle(fontSize: 18, fontFamily: "cambria"),
            ),
            leading: Icon(
              Icons.countertops,
              color: Colors.amber,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.black26,
            ),
            onTap: () => {
              print("tap on counter"),
              Navigator.pop(context),
              Navigator.pushNamed(context, "/counter")
            },
          )
        ],
      ),
    );
  }
}
