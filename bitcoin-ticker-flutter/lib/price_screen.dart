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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getCoinResponse('BTC', 'EUR').then((value) =>
        print(parseResponse(value))); //TODO: this works, but got ratelimited.
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Column(children: null),
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
