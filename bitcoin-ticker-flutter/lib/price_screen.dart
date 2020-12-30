import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';

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

  List<Widget> getCoins() {
    List<Widget> temp = [];

    for (String coin in cryptoList) {
      CoinData tempCoin = CoinData(coin: coin, currency: selectedCurrency);
      tempCoin.getCoinData();

      Widget coinCard = Padding(
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
              '1 $coin = ${tempCoin.rate} $selectedCurrency',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );

      temp.add(coinCard);
    }

    return temp;
  }

  List<Future<Widget>> populateCoins() {
    return cryptoList.map((coin) async {
      CoinData temp = CoinData(coin: coin, currency: selectedCurrency);
      await temp.getCoinData();
      print(temp.rate);

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
              '1 $coin = ${temp.rate} $selectedCurrency',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  void initState() {
    super.initState();
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
          Column(children: getCoins()),
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