import 'dart:convert';
import 'model/weather.dart';
import 'package:http/http.dart' as http;

class weatherService {
  Future<Weather> getWeatherData(String place) async {
    try {
      final queryParameters = {
        //key of the API
        'key': '20ca5ec3364e44c1aba121645231303',
        //the place where you want to bring data from
        'q': place,
      };
      //The http request made to API
      final uri =
          Uri.http('api.weatherapi.com', '/v1/current.json', queryParameters);
      final Response = await http.get(uri);
      if (Response.statusCode == 200) {
        //checks if the data is retrieved
        return Weather.fromJson(jsonDecode(Response.body));
        //returns the body of the API Data which you can find on their website
      } else {
        throw Exception('can not get weather');
      }
    } catch (e) {
      rethrow;
    }
  }
}
