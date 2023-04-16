import 'package:flutter/material.dart';
import 'package:flutter_basic_1/home_page/home_page.dart';
import 'package:flutter_basic_1/values.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'PORTOFOLIO',
      title: Values.name,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      
    );
  }
}
