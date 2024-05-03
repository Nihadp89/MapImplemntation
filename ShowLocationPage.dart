import 'package:flutter/material.dart';
import 'package:flutter_locator/BuildLocation.dart';

class PageLocation extends StatelessWidget {
  static String DisplayLocator='No Location';
  @override
  Widget build(BuildContext context) {
    LocatorGeo().RequestGeoLocator();
    return Scaffold(
      appBar: AppBar(
        title: Text('LOCATION'),
      ),
      body: Center(
        child: Text(DisplayLocator),
      ),
    );
  }
}
