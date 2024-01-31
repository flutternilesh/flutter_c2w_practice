//import "dart:html";

// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlagFunction(),
    );
  }
}

class FlagFunction extends StatefulWidget {
  const FlagFunction({super.key});

  @override
  State<FlagFunction> createState() => _FlagFunctionState();
}

class _FlagFunctionState extends State<FlagFunction> {
  int count = -1;
  void _counter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bharath Dhwaj"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.grey),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Cont1Poll(),
              Column(
                children: [
                  cont2_orange(),
                  cont3_white(),
                  cont4_chakra(),
                  cont5_green(),
                ],
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _counter, tooltip: "Add", child: const Text("Add")),
    );
  }

  Widget Cont1Poll() {
    return Container(
      height: 500,
      width: 20,
      color: Colors.black,
    );
  }

  Widget cont2_orange() {
    return Container(
      height: 80,
      width: 250,
      color: Colors.orange,
    );
  }

  Widget cont3_white() {
    return Container(
      height: 80,
      width: 250,
      color: Colors.white,
    );
  }

  Widget cont4_chakra() {
    return Container(
      child: Image.network(
          "https://www.shutterstock.com/image-vector/wheel-spokes-vector-iconmodern-ashok-600nw-2334393665.jpg"),
    );
  }

  Widget cont5_green() {
    return Container(
      height: 80,
      width: 250,
      color: Colors.green,
    );
  }

  Widget ladder() {
    if (count >= 0) {
      return Cont1Poll();
    } else if (count >= 1) {
      return cont2_orange();
    } else if (count >= 2) {
      return cont3_white();
    } else if (count >= 3) {
      return cont4_chakra();
    } else if (count >= 4) {
      return cont5_green();
    } else {
      return Container();
    }
  }
}
