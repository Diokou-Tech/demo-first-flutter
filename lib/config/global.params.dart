import 'package:flutter/material.dart';

class GlobalParams {
  static List<Map<String, dynamic>> menus = [
    {
      "title": "Home",
      "icon": Icon(
        Icons.home,
        color: Colors.amber,
      ),
      "route": "/home"
    },
    {
      "title": "Counter",
      "icon": Icon(
        Icons.camera,
        color: Colors.amber,
      ),
      "route": "/counter"
    },
    {
      "title": "About",
      "icon": Icon(
        Icons.question_answer,
        color: Colors.amber,
      ),
      "route": "/about"
    },
    {
      "title": "Todo",
      "icon": Icon(
        Icons.app_settings_alt,
        color: Colors.amber,
      ),
      "route": "/todo"
    },
    {
      "title": "Météo",
      "icon": Icon(
        Icons.waterfall_chart_sharp,
        color: Colors.amber,
      ),
      "route": "/meteo"
    },
    {
      "title": "Github",
      "icon": Icon(
        Icons.code,
        color: Colors.amber,
      ),
      "route": "/github"
    }
  ];
}
