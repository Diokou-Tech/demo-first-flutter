import 'package:json_annotation/json_annotation.dart';
import 'package:todo_app/models/sys.dart';
// import 'package:todo_app/models/weather.dart';

@JsonSerializable(explicitToJson: true)
class WeatherReponse{
  int timezone ,id,  cod;
  String name;
  // List<Weather> weather;
  Sys sys;
  WeatherReponse(this.name,this.id,this.cod,this.timezone, this.sys);
  
  @override
  String toString()
  {
    return "id : $id \n timezone : $timezone \n name : $name \n code : $cod \n";
  }

  WeatherReponse.fromJson(Map<String , dynamic> json) : 
  id = json["id"],
  cod = json["cod"],
  sys = json["sys"],
  timezone = json["timezone"],
  name = json["name"];
  // weather = json["weather"];
}