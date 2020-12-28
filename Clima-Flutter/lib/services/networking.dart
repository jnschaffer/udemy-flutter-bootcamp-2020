import 'dart:convert';

import 'package:location/location.dart';
import 'package:clima/utilities/constants.dart';
import 'package:http/http.dart' as http;

class Networking {
  LocationData _locationData;
  String _urlString;
  http.Response response;
  dynamic weatherData;

  Networking(this._locationData) {
    _urlString = 'http://api.openweathermap.org/data/2.5/weather?lat=' +
        '${_locationData.latitude}&lon=${_locationData.longitude}&appid=$kApiKey';

    makeRequest();
  }

  Future<void> makeRequest() async {
    response = await http.get(_urlString);

    if (response.statusCode == 200) {
      weatherData = jsonDecode(response.body);
    }
  }
}
