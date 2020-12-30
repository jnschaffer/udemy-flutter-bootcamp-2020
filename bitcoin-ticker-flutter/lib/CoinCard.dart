import 'package:flutter/material.dart';
import 'coin_data.dart';

class CoinCard {
  String coin;
  String currency;
  String rate;
  String outputString;

  CoinCard(this.coin, this.currency) {
    getCoinResponse(coin, currency).then((response) {
      dynamic parsed = parseResponse(response);
      double temp = parsed['rate'];
      rate = temp.toStringAsFixed(0);
      print(rate);
    });

    outputString = '1 $coin = $rate $currency';
  }

  Widget createCard() {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            outputString,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
