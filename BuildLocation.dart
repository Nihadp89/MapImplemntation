import 'package:flutter_locator/ShowLocationPage.dart';
import 'package:geolocator/geolocator.dart';

class LocatorGeo {
 // var center;
  RequestGeoLocator() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print('denied location');
    } else {
      print('Access');
      GetLocation();
    }
  }

  GetLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    //center = LatLng(position.latitude, position.longitude);
    PageLocation.DisplayLocator =
        'Latitude: ${position.latitude}, Longitude: ${position.longitude}';
        print('Latitude: ${position.latitude}, Longitude: ${position.longitude}');
  }
  
}
