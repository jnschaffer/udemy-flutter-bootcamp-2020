import 'dart:io';

import 'package:bitcoin_ticker/CoinCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bitcoin_ticker/coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'EUR';

  DropdownButton<String> androidCurrencyPicker() {
    return DropdownButton(
      value: selectedCurrency,
      items: androidCurrencyPickerItem(),
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
        });
      },
    );
  }

  List<DropdownMenuItem<String>> androidCurrencyPickerItem() {
    return currenciesList.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  CupertinoPicker iOSCurrencyPicker() {
    List<Text> itemList = iOSCurrencyPickerItem();

    return CupertinoPicker(
      itemExtent: 32.0,
      onSelectedItemChanged: (index) {
        setState(() {
          selectedCurrency = currenciesList[index];
          print(selectedCurrency);
        });
      },
      children: itemList,
    );
  }

  List<Widget> iOSCurrencyPickerItem() {
    return currenciesList.map((value) => Text(value)).toList();
  }

  Map<String, String> rates = {};
  bool isWaiting = false;

  List<Widget> makeCards() {
    List<Widget> cryptoCards = [];

    rates.forEach((coin, rate) {
      cryptoCards.add(CoinCard(
        coin: coin,
        currency: selectedCurrency,
        rate: rate,
      ));
    });

    return cryptoCards;
  }

  Map<String, String> getRates() {
    Map<String, String> temp = {};
    cryptoList.forEach((coin) {
      getCoinResponse(coin, selectedCurrency).then((response) {
        double rate = parseResponse(response);
        temp.addAll({coin: rate.toStringAsFixed(0)});
      });
    });
    return temp;
  }

  @override
  void initState() {
    super.initState();
    getRates();
    makeCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            children: <Widget>[],
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child:
                Platform.isIOS ? iOSCurrencyPicker() : androidCurrencyPicker(),
          ),
        ],
      ),
    );
  }
}
