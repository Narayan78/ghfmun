import 'package:flutter/material.dart';
import 'package:ghfmun/enquiry%20logics/all_enquiry.dart';
import '../../common_widgets/footer.dart';
import '../../common_widgets/logoContainer.dart';
import '../../common_widgets/navigation_bar.dart';
import '../join_us/join_us.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController pin = TextEditingController();
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
                    height: screenSize.height - screenSize.height * 0.3,
                    width: screenSize.width,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Contact Us",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Email: info@globalhelpfoundation.org\n\nPhone: +977 9851041063\n\nAddress: Naxal,"
                          " Kathmandu Nepal",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  _showDialog("Enter code", context, pin);
                                },
                                child: const Text(
                                  "see enquirys",
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        )
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
Future<void> _showDialog(
    String message, BuildContext context, TextEditingController pin) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Wrap(
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 18),
            ),
            TextField(
              controller: pin,
              obscureText: true, // Mask the entered PIN for security
            )
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              final enteredPin = pin.text;
              const expectedPin = "1234"; // Replace with your expected PIN

              if (enteredPin == expectedPin) {
                // Navigate to the next page if the PIN is correct
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const ShowAllEnquiry(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );
              } else {
                  
                  Navigator.pop(context);
              }

              // Close the dialog
            
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
