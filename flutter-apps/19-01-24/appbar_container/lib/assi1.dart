import 'package:flutter/material.dart';

class assi1 extends StatelessWidget {
  const assi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Jay Shree Ram",
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
        ),
        actions: const [
          Icon(Icons.access_alarm_rounded),
          Icon(Icons.access_time_filled_rounded),
        ],
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}
