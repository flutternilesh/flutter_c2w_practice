import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment4(),
    );
  }
}

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});
  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  bool p1 = false;
  bool p2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "instagram",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          actions: const [
            Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            )
          ],
          backgroundColor: Colors.white,
        ),
        // body: ListView(
        //   children: [
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           color: Colors.purple,
        //           child: Image.network(
        //             "https://qph.cf2.quoracdn.net/main-qimg-5d7521d92863e8335eba2d9d50c52f5b",
        //             width: double.infinity,
        //           ),
        //         ),
        //         Row(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.favorite_outline_outlined,
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.comment_outlined,
        //               ),
        //             ),
        //             IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.send,
        //                 )),
        //           ],
        //         ),
        //       ],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           color: Colors.purple,
        //           child: Image.network(
        //             "https://img.freepik.com/premium-photo/shree-ram-hindu-god-lord-ram-king-ayodhya_789916-4064.jpg",
        //             width: double.infinity,
        //           ),
        //         ),
        //         Row(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.favorite_outline_outlined,
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.comment_outlined,
        //               ),
        //             ),
        //             IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.send,
        //                 )),
        //           ],
        //         ),
        //       ],
        //     ),
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           color: Colors.purple,
        //           child: Image.network(
        //             "https://img.freepik.com/premium-photo/lord-mahadev-god-shiv-poster-design-wallpaper-generative-ai_852336-18946.jpg",
        //             width: double.infinity,
        //           ),
        //         ),
        //         Row(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.favorite_outline_outlined,
        //               ),
        //             ),
        //             IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.comment_outlined,
        //               ),
        //             ),
        //             IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.send,
        //                 )),
        //           ],
        //         ),
        //       ],
        //     )
        //   ],
        // ));

        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.purple,
                    child: Image.network(
                      "https://qph.cf2.quoracdn.net/main-qimg-5d7521d92863e8335eba2d9d50c52f5b",
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            p1 = !p1;
                          });
                        },
                        icon: Icon(
                          Icons.favorite_rounded,
                          color: p1 ? Colors.red : Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                          )),
                      // const SizedBox(
                      //   width: 310,
                      // ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_add_outlined,
                          )),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.purple,
                    child: Image.network(
                      "https://img.freepik.com/premium-photo/shree-ram-hindu-god-lord-ram-king-ayodhya_789916-4064.jpg",
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            p2 = !p2;
                          });
                        },
                        icon: Icon(
                          Icons.favorite_rounded,
                          color: p2 ? Colors.red : Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                          )),
                      // const SizedBox(
                      //   width: 310,
                      // ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_add_outlined,
                          )),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
