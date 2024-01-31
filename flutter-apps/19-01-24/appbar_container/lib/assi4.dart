import 'package:flutter/material.dart';

class assi4 extends StatelessWidget {
  const assi4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.amber,
              height: 200,
              width: 100,
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.blue,
              height: 200,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
