import 'package:flutter/material.dart';
import 'package:flutter_locator/ShowLocationPage.dart';
import 'package:flutter_locator/main.dart';

class PageHome extends State<StateRoute> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOCATOR'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageLocation()),
              );
            },
            child: Text('Press')),
      ),
    );
  }
}
