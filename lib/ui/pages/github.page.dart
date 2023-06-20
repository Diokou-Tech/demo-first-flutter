import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class GithubPage extends StatefulWidget {
  GithubPage({super.key});

  @override
  State<GithubPage> createState() => _GithubPageState();
}

class _GithubPageState extends State<GithubPage> {
  int count = 0;
  String queryText = "";
  bool notVisible = false;
  TextEditingController queryTextController = TextEditingController();
  dynamic datas;

  void _search(String query) {
    var client = http.Client();

    String url =
        "https://api.github.com/search/users?q=$query&per_page=5&page=0";
    try {
      var response = client.get(Uri.parse(url));
      response.then((value) => {
            setState(() {
              datas = json.decode(value.body);
            })
          });
    } catch (e) {
      print("une exception est levee !");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Github $queryText",
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    obscureText: notVisible,
                    onChanged: (value) => {
                      setState(() {
                        queryText = value;
                      })
                    },
                    controller: queryTextController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: notVisible == false
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            notVisible = !notVisible;
                          });
                        },
                      ),
                      contentPadding: EdgeInsets.only(left: 20),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber, width: 1),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ),
                IconButton(
                    color: Colors.amber,
                    onPressed: () => {
                          setState(() => {
                                queryText = queryTextController.text,
                                _search(queryText)
                              }),
                        },
                    icon: Icon(Icons.search))
              ],
            ),
          )
        ],
      )),
    );
  }
}
