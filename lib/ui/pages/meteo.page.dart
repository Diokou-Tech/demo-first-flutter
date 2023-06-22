import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class MeteoPage extends StatefulWidget {
  @override
  State<MeteoPage> createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  // attributs
  TextEditingController regionConroller = TextEditingController();
  late String defaultRegion;
  dynamic weather;
  late String messageError;
  void _getWeather(String city) {
    if (city.isNotEmpty) {
      var client = http.Client();
      String apiKey = "a323bd5f389298fc244779347939aa77";
      String urlWeather =
          "https://api.openweathermap.org/data/2.5/weather?q=$city,SN&appid=$apiKey&lang=fr";
      var response = client.get(Uri.parse(urlWeather));
      response.then((value) => {
        setState((){
        weather = json.decode(value.body);
        }),
        print(" Name :$weather[0]['name']")
      }).catchError((onError) => {
        print(onError.toString()),
        messageError = onError.toString()
      });
    }
  }

  @override
  void initState() {
    super.initState();
    defaultRegion = "Dakar";
    messageError = "";
    _getWeather(defaultRegion);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Meteo"),
      ),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: regionConroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Entre une zone géographique !",
                  icon: Icon(Icons.location_city),
                  suffixIcon: IconButton(
                      tooltip: "Effacer",
                      icon: Icon(Icons.cancel),
                      onPressed: () {
                        print("Delete text zone ");
                        regionConroller.clear();
                      })),
              onFieldSubmitted: (value) {
                _getWeather(value);
              },
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Card(
              shadowColor: Colors.amber,
              elevation: 9.0,
              child: SizedBox(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 200,
                          child: Image.asset("images/weather.png"),
                        ),
                        // Text(
                        //   " $weather['name'], $weather['sys']['country']",
                        //   style: TextStyle(fontFamily: "cambria", fontSize: 30),
                        // ),
                        Text(
                          "39°",
                          style: TextStyle(
                              fontFamily: "cambria",
                              fontSize: 40,
                              color: Colors.amber,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(messageError, 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
