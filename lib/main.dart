import 'package:flutter/material.dart';
import 'package:iconic/pages/homepage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: black_theme(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
