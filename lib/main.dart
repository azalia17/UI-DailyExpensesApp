import 'package:flutter/material.dart';
import './nav.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily Expenses",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        canvasColor: Colors.transparent,
      ),
      home: Nav(),
    );
  }
}
