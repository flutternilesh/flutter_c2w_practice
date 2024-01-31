import 'package:flutter/material.dart';

class assi2 extends StatelessWidget {
  const assi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text("BHARAT"),
        actions: const [
          Icon(Icons.favorite_outline_outlined),
        ],
      ),
    );
  }
}
