
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int cnt1 = 0;
  int cnt2 = 0;
  int cnt3 = 0;
  final List<int> list1 = [120, 121, 111, 131];
  final List<int> list2 = [123, 153, 567, 1634];
  final List<int> list3 = [1, 2, 45, 56];

  void _palindrome() {
    setState(() {
      cnt1 = 0;
      for (int i = 0; i < list1.length; i++) {
        int n = list1[i];
        int original = n;
        int rev = 0;
        while (n != 0) {
          int rem = n % 10;
          rev = rev * 10 + rem;
          n = n ~/ 10;
        }
        if (rev == original) {
          cnt1++;
        }
      }
    });
  }

  void _armstrong() {
    setState(() {
      cnt2 = 0;
      for (int i = 0; i < list2.length; i++) {
        int num = list2[i];
        int temp = num;
        int r = list2[i];
        int count = 0;
        int sum = 0;
        while (num != 0) {
          count++;
          num = num ~/ 10;
        }
        num = temp;
        while (num != 0) {
          int rem1 = num % 10;
          int mult = 1;
          for (int u = 0; u < count; u++) {
            mult = mult * rem1;
          }
          sum = sum + mult;
          num = num ~/ 10;
        }
        if (sum == temp) {
          cnt2++;
        }
      }
    });
  }

  void _strong() {
    setState(() {
      cnt3 = 0;
      for (int i = 0; i < list3.length; i++) {
        int b = list3[i];
        int c = b;
        int sum = 0; // Reset sum for each number
        while (b != 0) {
          int rem = b % 10;
          int fact = 1;
          for (int w = 1; w <= rem; w++) {
            fact = fact * w;
          }
          sum = sum + fact;
          b = b ~/ 10;
        }
        if (sum == c) {
          cnt3++;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Number System"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$cnt1'),
            ElevatedButton(
              onPressed: _palindrome,
              child: const Text("Count Palindrome"),
            ),
            const SizedBox(height: 40),
            Text('$cnt2'),
            ElevatedButton(
              onPressed: _armstrong,
              child: const Text("Count Armstrong"),
            ),
            const SizedBox(height: 40),
            Text('$cnt3'),
            ElevatedButton(
              onPressed: _strong,
              child: const Text("Count Strong"),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'dart:math';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int cnt1 = 0;
//   int cnt2 = 0;
//   int cnt3 = 0;
//   final List<int> list1 = [120, 121, 111, 131];
//   final List<int> list2 = [123, 153, 567, 1634];
//   final List<int> list3 = [1, 2, 45, 56];

//   void _palindrome() {
//     setState(() {
//       cnt1 = 0; // Reset count
//       for (int i = 0; i < list1.length; i++) {
//         int n = list1[i];
//         int original = n;
//         int rev = 0;
//         while (n != 0) {
//           int rem = n % 10;
//           rev = rev * 10 + rem;
//           n = n ~/ 10;
//         }
//         if (rev == original) {
//           cnt1++;
//         }
//       }
//     });
//   }

//   void _armstrong() {
//     setState(() {
//       cnt2 = 0; // Reset count
//       for (int i = 0; i < list2.length; i++) {
//         int num = list2[i];
//         int temp = num;
//         int count = 0;
//         int sum = 0;
//         while (num != 0) {
//           count++;
//           num = num ~/ 10;
//         }
//         num = temp;
//         while (num != 0) {
//           int rem1 = num % 10;
//           sum += pow(rem1, count).toInt();
//           num = num ~/ 10;
//         }
//         if (sum == temp) {
//           cnt2++;
//         }
//       }
//     });
//   }

//   void _strong() {
//     setState(() {
//       cnt3 = 0; // Reset count
//       for (int i = 0; i < list3.length; i++) {
//         int b = list3[i];
//         int c = b;
//         int sum = 0; // Reset sum for each number
//         while (b != 0) {
//           int rem = b % 10;
//           int fact = 1;
//           for (int w = 1; w <= rem; w++) {
//             fact = fact * w;
//           }
//           sum = sum + fact;
//           b = b ~/ 10;
//         }
//         if (sum == c) {
//           cnt3++;
//         }
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Number System"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Count Palindrome: $cnt1'),
//             ElevatedButton(
//               onPressed: _palindrome,
//               child: const Text("Count Palindrome"),
//             ),
//             const SizedBox(height: 20),
//             Text('Count Armstrong: $cnt2'),
//             ElevatedButton(
//               onPressed: _armstrong,
//               child: const Text("Count Armstrong"),
//             ),
//             const SizedBox(height: 20),
//             Text('Count Strong: $cnt3'),
//             ElevatedButton(
//               onPressed: _strong,
//               child: const Text("Count Strong"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
