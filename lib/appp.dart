import 'package:flutter/material.dart';
import 'screens/homescreen/homescreen.dart';

class Appp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }


}



