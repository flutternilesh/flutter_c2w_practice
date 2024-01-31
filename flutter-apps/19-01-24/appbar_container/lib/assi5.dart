import 'package:flutter/material.dart';

class assi5 extends StatelessWidget {
  const assi5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "images/asd.png",
                height: 150,
                width: 150,
              ),
              Image.asset(
                "images/crickkkk.jpg",
                height: 150,
                width: 150,
              ),
              Image.asset(
                "images/t.png",
                height: 150,
                width: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
