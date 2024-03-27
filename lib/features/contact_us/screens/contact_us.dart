import 'package:flutter/material.dart';
import 'package:ghfmun/models/teamsModel.dart';
import '../../../common/footer.dart';
import '../../../common/logoContainer.dart';
import '../../../common/navigation_bar.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    // final TextEditingController pin = TextEditingController();
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Column(
                children: [
                  const NavigationBarWidget(),
                  Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: screenSize.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: double.infinity,
                          color: const Color.fromARGB(255, 96, 155, 204),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Email: info@globalhelpfoundation.org   Phone: +977 9851041063   Address: Naxal,"
                                " Kathmandu Nepal",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 60.0),
                          child: Text(
                            "Our Teams ",
                            style: TextStyle(fontSize: 35),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 50.0, right: 50),
                          child: GridView.builder(
                            shrinkWrap: true,
                            padding: const EdgeInsets.symmetric(
                                vertical: 50, horizontal: 2),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: screenSize.width >= 1090 ? 2 : 1,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio:
                                  screenSize.width >= 1090 ? 3 / 1.5 : 3 / 0.9,
                            ),
                            itemCount: teamList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                elevation: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 300,
                                        height: 500,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            teamList[index].imageUrl,
                                            fit: BoxFit.cover,
                                            errorBuilder: (BuildContext context,
                                                Object exception,
                                                StackTrace? stackTrace) {
                                              // Display a placeholder or error message when image loading fails
                                              return const Placeholder();
                                            },
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              teamList[index].name,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              teamList[index].position,
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        // const Spacer(),
                        // Row(
                        //   children: [
                        //     const Spacer(),
                        //     TextButton(
                        //         onPressed: () {
                        //           _showDialog("Enter code", context, pin);
                        //         },
                        //         child: const Text(
                        //           "see enquirys",
                        //           style: TextStyle(color: Colors.black),
                        //         ))
                        //   ],
                        // )
                      ],
                    ),
                  ),
                  const FooterSection()
                ],
              ),
              Positioned(
                top: screenSize.height * 0,
                left: screenSize.width * 0.1,
                child: LogoContainer(
                  height: screenSize.height * 0.2,
                  width: screenSize.height * 0.17,
                ),
              ),
            ],
          )),
    );
  }
}

// Function to show the popup dialog
// Future<void> _showDialog(
//     String message, BuildContext context, TextEditingController pin) async {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         content: Wrap(
//           children: [
//             Text(
//               message,
//               style: const TextStyle(fontSize: 18),
//             ),
//             TextField(
//               controller: pin,
//               obscureText: true, // Mask the entered PIN for security
//             )
//           ],
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               final enteredPin = pin.text;
//               const expectedPin = "1234"; // Replace with your expected PIN

//               if (enteredPin == expectedPin) {
//                 // Navigate to the next page if the PIN is correct
//                 // Navigator.push(
//                 //   context,
//                 //   PageRouteBuilder(
//                 //     pageBuilder: (context, animation, secondaryAnimation) =>
//                 //         const ShowAllEnquiry(),
//                 //     transitionsBuilder:
//                 //         (context, animation, secondaryAnimation, child) {
//                 //       return FadeTransition(
//                 //         opacity: animation,
//                 //         child: child,
//                 //       );
//                 //     },
//                 //   ),
//                 // );
//               } else {
//                 Navigator.pop(context);
//               }

//               // Close the dialog
//             },
//             child: const Text('OK'),
//           ),
//         ],
//       );
//     },
//   );
// }
