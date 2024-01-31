import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlagFunction(),
    );
  }
}

class FlagFunction extends StatefulWidget {
  const FlagFunction({Key? key});

  @override
  _FlagFunctionState createState() => _FlagFunctionState();
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
            (count >= 0) ? Cont0Poll() : Container(),
            Column(
              children: [
                (count >= 1) ? cont1Orange() : Container(),
                (count >= 2) ? cont2White() : Container(),
                // (count >= 3) ? cont3Chakra() : Container(),
                (count >= 3) ? cont4Green() : Container(),
              ],
            ),
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

Widget Cont0Poll() {
  return Container(
    height: 600,
    width: 20,
    color: Colors.black,
  );
}

Widget cont1Orange() {
  return Container(
    height: 80,
    width: 250,
    color: Colors.orange,
  );
}

Widget cont2White() {
  return Container(
    height: 80,
    width: 250,
    color: Colors.white,
    child: cont3Chakra(),
  );
}

Widget cont3Chakra() {
  return Container(
    child: Image.network(
        "https://www.shutterstock.com/image-vector/wheel-spokes-vector-iconmodern-ashok-600nw-2334393665.jpg"),
  );
}

Widget cont4Green() {
  return Container(
    height: 80,
    width: 250,
    color: Colors.green,
  );
}
