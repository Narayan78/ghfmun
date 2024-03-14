// import 'package:flutter/material.dart';
// import 'package:ghfmun/enquiry%20logics/enquiry_repository.dart';

// class ShowAllEnquiry extends StatefulWidget {
//   const ShowAllEnquiry({super.key});

//   @override
//   State<ShowAllEnquiry> createState() => _ShowAllEnquiryState();
// }

// class _ShowAllEnquiryState extends State<ShowAllEnquiry> {
//   @override
//   Widget build(BuildContext context) {
//     Future getData() async {
//       EnquiryRepository repo = EnquiryRepository();
//       final data = await repo.getEnquiry();
//       print(data);
//       return  await data;
//     }

//     return Container(
//         child: SingleChildScrollView(
//       child: Column(
//         children: [
//         Text(getData().toString())
//         ],
//       ),
//     ));
//   }
// }
