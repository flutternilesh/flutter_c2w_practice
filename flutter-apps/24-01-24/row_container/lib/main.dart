import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assi(),
    );
  }
}

class Assi extends StatelessWidget {
  const Assi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App-Bar"),
      ),
      body: SizedBox(
        height: double.infinity,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.orange,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.purple,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.black87,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.pink,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
