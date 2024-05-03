import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BuildMap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateMap();
  }
}

class StateMap extends State<BuildMap> {
  late GoogleMapController mapController;

  final LatLng Place = LatLng(37.7749, -122.4194);

  void CreateController(GoogleMapController controller) {
    mapController = controller;
    print(mapController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
        backgroundColor: Colors.green[700],
      ),
      body: FutureBuilder(
        future: WaitingFunction(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            print('Waiting For Complete Future');
            return CircularProgressIndicator();
          } else {
            return GoogleMap(
              mapType: MapType.normal,
              onMapCreated: CreateController,
              initialCameraPosition: CameraPosition(
                target: Place,
                zoom: 11.0,
              ),
            );
          }
        },
      ),
    );
  }

  Future<void> WaitingFunction() async {
    return Future.delayed(Duration(seconds: 5));
  }
}
