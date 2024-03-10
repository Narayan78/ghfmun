import 'package:flutter/material.dart';
import 'Views/homepage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GHF MUN',
      home: HomePage(),
    );
  }
}











// class MyAppp extends StatelessWidget {
//   const MyAppp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Quick Enquiry Example'),
//         ),
//         body: Center(
//           child: Container(
//             width: 300.0,
//             padding: const EdgeInsets.all(16.0),
//             decoration: BoxDecoration(
//               color: Colors.blueAccent, // Set your desired background color
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                const Text(
//                   'Quick Enquiry?',
//                   style: TextStyle(
//                     color: Colors.white, // Set text color to contrast with the background
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                const SizedBox(height: 16.0),
//                const TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Your Name',
//                     fillColor: Colors.white,
//                     filled: true,
//                   ),
//                 ),
//               const  SizedBox(height: 8.0),
//                const TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Your Email',
//                     fillColor: Colors.white,
//                     filled: true,
//                   ),
//                 ),
//                const SizedBox(height: 8.0),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Handle button press
//                   },
//                   style: ElevatedButton.styleFrom(
//                   ),
//                   child:const Text('Submit'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }