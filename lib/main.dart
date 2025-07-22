import 'package:flutter/material.dart';
import 'package:nav/screen1.dart';
import 'package:nav/screen2.dart';
import 'package:nav/screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Aufgabe',
      // TODO: Hier wird später die BottomNavigationBar konfiguriert
      home: Screen3()
    );
  }
}