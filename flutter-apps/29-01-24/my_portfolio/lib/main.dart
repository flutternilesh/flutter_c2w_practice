import "package:flutter/material.dart";

void main() => (runApp(const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortfoliaApp(),
    );
  }
}

class PortfoliaApp extends StatefulWidget {
  const PortfoliaApp({super.key});
  @override
  State<PortfoliaApp> createState() => _PortfoliaApp();
}

class _PortfoliaApp extends State<PortfoliaApp> {
  int count = -1;
  void counter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: (count >= 0)
          ? Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "images/pfimage.jpg",
                      ))),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    (count >= 1)
                        ? const Text(
                            "Name : Nilesh Premsing Rajput",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        : Container(),
                    (count >= 2)
                        ? Image.asset("images/nilesh.png.png",
                            height: 200, width: 200, fit: BoxFit.cover)
                        : Container(),
                    const SizedBox(
                      height: 30,
                    ),
                    (count >= 3)
                        ? const Text(
                            "College Name : JSPM NTC PUNE",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        : Container(),
                    (count >= 4)
                        ? Image.asset(
                            "images/logo.png.png",
                            height: 200,
                            width: 200,
                          )
                        : Container(),
                    const SizedBox(
                      height: 30,
                    ),
                    (count >= 5)
                        ? const Text(
                            "Company Name : Bitwise",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        : Container(),
                    (count >= 6)
                        ? Image.asset("images/compnylogo.png",
                            height: 220, width: 200, fit: BoxFit.fill)
                        : Container(),
                  ],
                ),
              ),
            )
          : Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: counter,
        tooltip: "Next",
        child: const Text("Next"),
      ),
    );
  }
}
