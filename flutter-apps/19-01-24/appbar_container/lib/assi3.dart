import 'package:flutter/material.dart';

class assi3 extends StatelessWidget {
  const assi3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Hello Core2Web",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 360,
            color: Colors.blue,
          ),
        ));
  }
}
