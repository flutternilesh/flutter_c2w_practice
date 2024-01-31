import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bharath Rashtriya Dhwaj"),
          backgroundColor: Colors.deepOrangeAccent,
          centerTitle: true,
        ),
        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/12tc.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 300,
                  color: Colors.orange,
                ),
                Container(
                  height: 60,
                  width: 300,
                  color: Colors.white,
                  child: Center(
                      child: Image.network(
                          "https://media.istockphoto.com/id/1214007702/vector/the-ashoka-chakra-vector-icon-in-a-navy-blue-color-on-a-white-background-indian-national.jpg?s=2048x2048&w=is&k=20&c=Tiu_9_PNzO2zJxgNUmn-grzeCo60p0X8Pm581Unr5Rc=")),
                ),
                Container(
                  height: 60,
                  width: 300,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
