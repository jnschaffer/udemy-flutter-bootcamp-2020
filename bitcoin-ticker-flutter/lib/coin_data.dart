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

class CoinData {
  String coin;
  String currency;
  String coinApiUrl;
  dynamic coinData;
  String rate;

  Map<String, String> headers;

  CoinData({this.coin = 'BTC', this.currency = 'EUR', this.headers}) {
    coinApiUrl = 'https://rest.coinapi.io/v1/exchangerate/$coin/$currency';
    headers ??= {'X-CoinAPI-Key': coinApiKey};
    rate ??= '?';
  }

  Future<void> getCoinData() async {
    http.Response response = await http.get(coinApiUrl, headers: headers);

    if (response.statusCode == 200) {
      coinData = jsonDecode(response.body);
      double temp = coinData['rate'];
      rate = temp.toStringAsFixed(2);
    }
  }
}
