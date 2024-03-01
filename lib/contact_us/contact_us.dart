import 'package:flutter/material.dart';
import '../common_widgets/logoContainer.dart';
import '../common_widgets/navigation_bar.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
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
                    height: screenSize.height * 0.88 + screenSize.height * 0.3,
                    width: screenSize.width,
                    child:    const Column(
                    
                      children: [
                         SizedBox(
                          height: 20,
                        ),
                         Text(
                          "Contact Us",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         SizedBox(
                          height: 20,
                        ),
                         Text(
                          "Email: info@globalhelpfoundation.org\n\nPhone: +977 9851041063\n\nAddress: Naxal, Kathmandu Nepal",
                            style: TextStyle(fontSize: 18),), 
                      ], ),
                  ),
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
