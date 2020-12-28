import 'package:location/location.dart';

class CustomLocation {
  LocationData position;

  Future<void> getCurrentLocation() async {
    try {
      position = await Location().getLocation();
    } catch (e) {
      print(e);
    }
  }
}
