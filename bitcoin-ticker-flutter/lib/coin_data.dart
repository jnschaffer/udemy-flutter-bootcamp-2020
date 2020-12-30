import 'dart:convert';

import 'package:http/http.dart' as http;
import 'secret.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

Future<http.Response> getCoinResponse(String coin, String currency) async {
  String coinApiUrl = 'https://rest.coinapi.io/v1/exchangerate/$coin/$currency';
  Map<String, String> headers = {'X-CoinAPI-Key': coinApiKey};

  return await http.get(coinApiUrl, headers: headers);
}

String parseResponse(http.Response response) {
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  }

  return response.statusCode.toString();
}
