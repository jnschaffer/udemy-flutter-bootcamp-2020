import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:clima/utilities/constants.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  LocationData location;

  Future<void> getCurrentLocation() async {
    try {
      location = await Location().getLocation();

      Networking networking = Networking(location);
      await networking.makeRequest();

      Navigator.pushNamed(context, routeLocation, arguments: networking);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
