// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class EnquiryRepository {
//   Future<void> sendEnquiry(String email, String phoneNumber, String query) async {
//     try {
//       final response = await http.post(
//         Uri.parse("https://ghfmun.org/submitData"),
//         headers: {
//           'Content-Type': 'application/json', // Set content type to JSON
//         },
//         body: jsonEncode({
//           "userEmail": email,
//           "phoneNumber": phoneNumber,
//           "enquiry": query,
//         }),
//       );
//     } catch (e) {
//       print(e);
//     }
//   }

//   Future getEnquiry() async {
//     final response = await http.get(
//       Uri.parse("https://ghfmun.org/getData"),
//     );
//     print("check start");
//     print(response.body);
//     print("cehck conplete");
//      return response.body;
     
//   }
// }
