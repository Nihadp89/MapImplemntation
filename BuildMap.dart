/*
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'BuildLocation.dart';

class MapIntegration {
  onMapCreated(GoogleMapController controller) {
    var con = controller;
  }

  callingMap() {
    return LocatorGeo().center == null
        ? Center(child: CircularProgressIndicator())
        : GoogleMap(
            onMapCreated: onMapCreated,
            initialCameraPosition: CameraPosition(
              target: LocatorGeo().center,
              zoom: 15.0,
            ),
            markers: {
                Marker(
                  markerId: MarkerId('current_location'),
                  position: LocatorGeo().center,
                  infoWindow: InfoWindow(title: 'Your Location'),
                ),
              });
  }
}
*/