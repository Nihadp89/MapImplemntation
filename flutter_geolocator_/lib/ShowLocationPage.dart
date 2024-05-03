import 'package:flutter/material.dart';
import 'package:flutter_geolocator_/BuildMap.dart';

class PageLocation extends StatelessWidget {
  static late String DisplayLocator = 'hi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LOCATION'),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuildMap()),
                  );
                },
                child: Text('press'))));
  }
}
