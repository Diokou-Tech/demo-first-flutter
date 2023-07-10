import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:todo_app/models/weather.response.dart';

class MeteoPage extends StatefulWidget {
  @override
  State<MeteoPage> createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  // attributs
  TextEditingController regionConroller = TextEditingController();
  String defaultRegion = "dakar";
  dynamic weather;
  late String messageError;
  Map? datas;
  WeatherReponse? responseWeather;

  void _getWeather(String city) async {
    if (city.isNotEmpty) {
      // var client = http.Client();
      String apiKey = "a323bd5f389298fc244779347939aa77";
      String urlWeather =
          "https://api.openweathermap.org/data/2.5/weather?q=$city,SN&appid=$apiKey&lang=fr";
      http.Response response = await http.get(Uri.parse(urlWeather));
      if (response.statusCode == 200) {
        setState(() {
          String responseString = response.body;
          var dataMap = jsonDecode(responseString);
          responseWeather = WeatherReponse.fromJson(dataMap);
          print(responseWeather.toString());
        });
      }else{
        print("Erreur Requete !");
      }
    }
  }

  @override
  void initState() {
    messageError = "";
    _getWeather(defaultRegion);
    super.initState();
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
                        regionConroller.clear();
                      })),
              onFieldSubmitted: (value) {
                _getWeather(value);
              },
            ),
          ),
          Expanded(
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
                          " Dakar, SN",
                          style: TextStyle(fontFamily: "cambria", fontSize: 30),
                        ),
                        Text(
                          "39°",
                          style: TextStyle(
                              fontFamily: "cambria",
                              fontSize: 40,
                              color: Colors.amber,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          messageError,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )
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
