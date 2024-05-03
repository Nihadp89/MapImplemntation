import 'package:flutter/material.dart';
import 'package:flutter_geolocator_/HomePage.dart';

void main() {
  runApp(const MainApp());
  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:StateRoute()
    );
  }
}
class StateRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PageHome();
  }


}
