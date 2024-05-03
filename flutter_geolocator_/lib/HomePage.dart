import 'package:flutter/material.dart';
import 'package:flutter_geolocator_/ShowLocationPage.dart';
import 'package:flutter_geolocator_/main.dart';

class PageHome extends State<StateRoute> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('jod'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageLocation()),
              );
            },
            child: Text('okda')),
      ),
    );
  }
}
