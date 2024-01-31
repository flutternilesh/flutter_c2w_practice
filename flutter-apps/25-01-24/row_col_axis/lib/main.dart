import 'package:flutter/material.dart';
import 'package:row_axis/C1.dart';
import 'package:row_axis/R.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: R(),
    );
  }
}
