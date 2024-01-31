import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Toggle(),
    );
  }
}

class Toggle extends StatefulWidget {
  const Toggle({super.key});
  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  int p1 = 0;
  int p2 = 0;

  void counter1() {
    p1++;
  }

  void counter2() {
    p2++;
  }

  Color setColor1() {
    if (p1 == 0) {
      return Colors.red;
    } else if (p1 == 1) {
      return Colors.blue;
    } else if (p1 == 2) {
      return Colors.yellow;
    } else {
      p1 = 0;
      return Colors.red;
    }
  }

  Color setColor2() {
    if (p2 == 0) {
      return Colors.orange;
    } else if (p2 == 1) {
      return Colors.purple;
    } else if (p2 == 2) {
      return Colors.greenAccent;
    } else {
      p2 = 0;
      return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Toggle App"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: setColor1(),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter1();
                    });
                  },
                  child: const Text("Button-1"),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: setColor2(),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter2();
                    });
                  },
                  child: const Text("Button-2"),
                )
              ],
            ),
          ],
        ));
  }
}
