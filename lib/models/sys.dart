class Sys{
  String country;

  Sys(this.country);
  Sys.fromJson(Map<String , dynamic> json) :
  country = json["country"];
}