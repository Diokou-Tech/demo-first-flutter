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
  //pagination
  int page = 0;
  int perPage = 10;

// search users on github with selection query
  void _search(String query) {
    if (query.isNotEmpty) {
      var client = http.Client();
      String url =
          "https://api.github.com/search/users?q=$query&per_page=$perPage&page=$page";
      try {
        var response = client.get(Uri.parse(url));
        response.then((value) => {
              setState(() {
                datas = json.decode(value.body);
                print(datas);
              })
            });
      } catch (e) {
        print("une exception est levee !");
      }
    } else {
      print("query null !");
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
                    onFieldSubmitted: (value) => {
                      setState(() {
                        queryText = value;
                      })
                    },
                    controller: queryTextController,
                    decoration: InputDecoration(
                      labelText: "Votre recherche !",
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
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                IconButton(
                    color: Colors.amber,
                    onPressed: () => {
                          setState(() => {
                                queryText = queryTextController.text,
                                _search(queryText.toLowerCase())
                              }),
                        },
                    icon: Icon(Icons.search))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: datas == null ? 0 : datas["items"].length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    datas["items"][index]["avatar_url"] ?? ""),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(datas['items'][index]['login'] ?? ""),
                            ],
                          ),
                          CircleAvatar(child: Text("0.1")),
                        ]),
                  );
                }),
          )
        ],
      )),
    );
  }
}
