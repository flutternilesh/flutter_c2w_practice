import 'package:appbar_container/assi1.dart';
import 'package:appbar_container/assi2.dart';
import 'package:appbar_container/assi3.dart';
import 'package:appbar_container/assi4.dart';
import 'package:appbar_container/assi5.dart';
import 'package:appbar_container/assi6.dart';
import 'package:appbar_container/assi7.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: assi7(),
    );
  }
}
