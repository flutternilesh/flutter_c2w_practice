// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:core';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: assi3(),
    );
  }
}

class assi3 extends StatefulWidget {
  const assi3({super.key});

  @override
  State<assi3> createState() => _assi3State();
}

class _assi3State extends State<assi3> {
  int? index = 0;
  final List<String> imglist = [
    "https://www.iskconbhiwandi.org/images/bhagavad-gita/bhagvad-gita.jpg",
    "https://i.pinimg.com/236x/4c/e3/2f/4ce32f4548885960ccf06ebef4f34d24.jpg",
    "https://static.theprint.in/wp-content/uploads/2019/11/bhagavad-gita-mala-beads-tulasi-mala-beads-1550044.jpg"
  ];
  void nextimg() {
    setState(() {
      index = index! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Display Image"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imglist[index!],
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: nextimg, child: const Text("NextImg")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: const Text("Reset")),
          ],
        )));
  }
}
