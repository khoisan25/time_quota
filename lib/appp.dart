import 'package:flutter/material.dart';
import 'screens/homescreen/homescreen.dart';
import 'screens/edit_record/edit_record.dart';
import 'screens/link_menu/link_menu.dart';
import 'screens/activity_menu/activity_menu.dart';
import 'screens/edit_link/edit_link.dart';

class Appp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }


}



