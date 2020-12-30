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

const String exampleResponse =
    '{"time": "2017-08-09T14:31:18.3150000Z","asset_id_base": "BTC","asset_id_quote": "USD","rate": 3260.3514321215056208129867667}';

Future<http.Response> getCoinResponse(String coin, String currency) async {
  String coinApiUrl = 'https://rest.coinapi.io/v1/exchangerate/$coin/$currency';
  Map<String, String> headers = {'X-CoinAPI-Key': coinApiKey};

  return await http.get(coinApiUrl, headers: headers);
}

dynamic parseResponse(http.Response response) {
  /* if (response.statusCode == 200) {
    return jsonDecode(response.body);
  }
  print(response.statusCode);
  return response.statusCode.toString(); */

  return jsonDecode(exampleResponse);
}
