import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  CustomLocation location = CustomLocation();

  @override
  void initState() {
    super.initState();
    location.getCurrentLocation();
    Navigator.pushNamed(context, routeCity, arguments: );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
            print(location.position);
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
