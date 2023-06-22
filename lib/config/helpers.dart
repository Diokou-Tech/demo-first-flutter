import "package:http/http.dart" as http;

class HelpersCustom {
  static Future getWeather(String city) {
    if (city.isNotEmpty) {
      var client = http.Client();
      String apiKey = "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";
      String urlWeather =
          "https://api.openweathermap.org/data/2.5/weather?q=$city,SN&appid=$apiKey&lang=fr";
      var response = client.get(Uri.parse(urlWeather));
      return response;
    } else {
      return Future(() => null);
    }
  }
}
