// import 'package:flutter/material.dart';

// class OurTeam extends StatelessWidget {
//   const OurTeam({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: double.infinity,
//           color: const Color(0xff3a3c55),
//           child:  Column(
//             children: [
//               const SizedBox(
//                 height: 10,
//               ),
//             const  Text(
//                 "Our Team",
//                 style: TextStyle(
//                     fontSize: 40,
//                     fontWeight: FontWeight.w900,
//                     color: Colors.white),
//               ),

//            profileContainer(),
//            const SizedBox(height: 10,)
//             ],
//           ),
//         ),
      
//       ],
//     );
//   }
// }


// Widget profileContainer (){
//   return Container(
//     height: 300,
//     width: 170,
//     decoration:  const BoxDecoration(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(30),
//         topRight:  Radius.circular(30),
//       )
//     ),
//     color: Colors.white,
//   );
// }

// class TeamListClass {
//   final String name;
//   final String degination;
//   final String imageurl;

//   TeamListClass({
//     required this.name,
//     required this.degination,
//     required this.imageurl,
//   });
// }



// GridView.builder(
//         itemCount: 3,
//         shrinkWrap: true,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisSpacing: 5.0, mainAxisSpacing: 5.0, crossAxisCount: 4),
//         itemBuilder: (BuildContext context, index) {
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 230, 224, 224),
//                   borderRadius: BorderRadius.circular(1000),
//                 ),
//                 child: Image.asset(
//                   "assets/ghfmun_logo.png",
//                   fit: BoxFit.fitHeight,
//                 ),
//               ),
//               const Text("Happy Dhital")
//             ],
//           );
//         });