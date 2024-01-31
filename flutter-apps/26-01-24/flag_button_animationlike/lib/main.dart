import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Flag(),
    );
  }
}

class Flag extends StatefulWidget {
  const Flag({super.key});

  @override
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  int cnt = -1;
  void _counter() {
    setState(() {
      cnt++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bharath Flag"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.grey),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (cnt >= 0)
                ? Container(
                    height: 690,
                    width: 20,
                    color: Colors.black,
                  )
                : Container(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                (cnt >= 1)
                    ? Container(
                        height: 78,
                        width: 250,
                        color: Colors.orange,
                      )
                    : Container(),
                (cnt >= 2)
                    ? Container(
                        height: 78,
                        width: 250,
                        color: Colors.white,
                        child: (cnt >= 3)
                            ? Image.network(
                                "https://www.shutterstock.com/image-vector/wheel-spokes-vector-iconmodern-ashok-600nw-2334393665.jpg")
                            : Container(),
                      )
                    : Container(),
                (cnt >= 4)
                    ? Container(
                        height: 78,
                        width: 250,
                        color: Colors.green,
                      )
                    : Container(),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _counter,
        tooltip: "Add",
        child: const Text("Add"),
      ),
    );
  }
}
