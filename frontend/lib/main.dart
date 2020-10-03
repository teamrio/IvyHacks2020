import 'package:flutter/material.dart';
import './app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.amber,
        primarySwatch: Colors.deepOrange
      ),
    );
  }
}