import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding & Margin"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
          child: Container(
              color: Colors.blue,
              child: Container(
                height: 250,
                width: 250,
                // color: Colors.red,

                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    border: Border.symmetric(
                        vertical: BorderSide(width: 20),
                        horizontal: BorderSide(width: 20)),
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Image.asset("assets/IMG_E2329_Cartoonize Effect.jpg"),
              ))),
    );
  }
}
