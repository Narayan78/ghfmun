import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../enquiry logics/enquiry_controller.dart';

class PriceDetail extends StatelessWidget {
  const PriceDetail({super.key});

  @override
  Widget build(BuildContext context) {

    final  emailController = TextEditingController();
    final numberController = TextEditingController();
    final enquiryController = TextEditingController();
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          const SizedBox(
            width: 70,
          ),
          SizedBox(
            width: screenSize.width * 0.55,
            child: Center(
              child: Card(
                shadowColor: Colors.blue,
                color: Colors.white,
                elevation: 2,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  width: screenSize.width * 0.5,
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 60),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Quick Enquiry?',
                          style: GoogleFonts.agdasima(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         TextField(
                          controller: emailController,
                          cursorColor: Colors.blue,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 205, 213, 219)),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            border: InputBorder.none,
                            hintText: "Your Email",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         TextField(
                          controller: numberController,
                          cursorColor: Colors.blue,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 205, 213, 219)),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            border: InputBorder.none,
                            hintText: "Your Phone Number",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                         TextField(
                          controller: enquiryController,
                          maxLines: 3,
                          cursorColor: Colors.blue,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 205, 213, 219)),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            border: InputBorder.none,
                            hintText: "Your Enquiry",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              minimumSize:
                                  MaterialStatePropertyAll(Size(250, 42)),
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 204, 239, 248),
                              ),
                            ),
                            onPressed: () {
                               EnquiryController controller = EnquiryController();
                              controller.enquiryControllerFunction(
                                email: emailController.text,
                                phoneNumber: numberController.text,
                                query: enquiryController.text
                              );
                                
                                // _showDialog("We will respond to you shortly. " , context);
                            },
                            child: const Text(
                              "Send",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                "Cost Details:",
                style: GoogleFonts.afacad(
                    fontSize: 32, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 320,
                    width: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 232, 239, 241),
                                      Color.fromARGB(255, 204, 239, 248),
                                    ]),
                                // color: const Color.fromARGB(255, 235, 237, 238),
                                borderRadius: BorderRadius.circular(20)),
                            width: 200,
                            height: 280,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 80,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  "NPR 9,000",
                                  style: GoogleFonts.lato(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  "Non-Residential Package",
                                  style: GoogleFonts.actor(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.amber)),
                                    onPressed: () {
                                      _showDialog("Booking session comming soon" , context);
                                    },
                                    child: const Text(
                                      "Book Now",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    )),
                                const SizedBox(
                                  height: 25,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 0,
                          right: 50,
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 106, 213, 243),
                            radius: 45,
                            child: Padding(
                              padding: EdgeInsets.all(18.0),
                              child: Image(
                                  image: AssetImage("assets/resident.png")),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 320,
                    width: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 232, 239, 241),
                                      Color.fromARGB(255, 204, 239, 248),
                                    ]),
                                // color: const Color.fromARGB(255, 235, 237, 238),
                                borderRadius: BorderRadius.circular(20)),
                            width: 200,
                            height: 280,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 80,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  "NPR 16,000",
                                  style: GoogleFonts.lato(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "Residential Package",
                                    style: GoogleFonts.actor(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.amber)),
                                    onPressed: () {
                                      _showDialog( "Booking session comming soon" , context ,);
                                    },
                                    child: const Text(
                                      "Book Now",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black),
                                    )),
                                const SizedBox(
                                  height: 25,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 0,
                          right: 50,
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 106, 213, 243),
                            radius: 45,
                            child: Padding(
                              padding: EdgeInsets.all(18.0),
                              child: Image(
                                  image: AssetImage("assets/location.png")),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Function to show the popup dialog
Future<void> _showDialog(
  String message,
  BuildContext context,
) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content:  Text(
          message,
          style: const TextStyle(fontSize: 18),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}