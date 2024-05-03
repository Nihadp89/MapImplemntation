import 'package:flutter/material.dart';
import 'package:flutter_geolocator_/ShowLocationPage.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:permission_handler/permission_handler.dart';

class LocatorGeo {
static  RequestGeoLocator() async {
    PermissionStatus status = await Permission.location.request();
    if (status == PermissionStatus.granted) {
      GetLocation();
    } else {
      print('DENIED');
    }
  }

  static GetLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

      var latitude = position.latitude;
      var longitude = position.longitude;
       List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
         Placemark placemark = placemarks[0];
    PageLocation.DisplayLocator = placemark.name!;
  }
}
