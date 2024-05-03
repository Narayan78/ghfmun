import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ghfmun/features/home_page/models/user_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../controller/enquiry_controller.dart';

//, WidgetRef ref
class PriceDetail extends StatelessWidget {
  const PriceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // final enquiryProvider = ref.watch(enquiryControllerProvider.notifier);
    // final enquiryState = ref.watch(enquiryControllerProvider);
    final emailController = TextEditingController();
    final numberController = TextEditingController();
    final enquiryController = TextEditingController();
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      child: screenSize.width >= 1100
          ? Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: quiryMethod(
                    screenSize,
                    emailController,
                    numberController,
                    enquiryController,
                  ),
                ),
                SizedBox(width: screenSize.width * 0.009),
                priceTagMethod(context),
              ],
            )
          : Column(
              children: [
                priceTagMethod(context),
                SizedBox(height: screenSize.width * 0.01),
                quiryMethod(
                  screenSize,
                  emailController,
                  numberController,
                  enquiryController,
                ),
              ],
            ),
    );
  }

  Column priceTagMethod(BuildContext context) {
    return Column(
      children: [
        Text(
          "Cost Details:",
          style: GoogleFonts.afacad(fontSize: 32, fontWeight: FontWeight.w700),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 320,
            //   width: 200,
            //   child: Stack(
            //     children: [
            //       Positioned(
            //         bottom: 0,
            //         child: Container(
            //           decoration: BoxDecoration(
            //               gradient: const LinearGradient(
            //                   begin: Alignment.topCenter,
            //                   end: Alignment.bottomCenter,
            //                   colors: [
            //                     Color.fromARGB(255, 232, 239, 241),
            //                     Color.fromARGB(255, 204, 239, 248),
            //                   ]),
            //               // color: const Color.fromARGB(255, 235, 237, 238),
            //               borderRadius: BorderRadius.circular(20)),
            //           width: 200,
            //           height: 280,
            //           child: Column(
            //             children: [
            //               const SizedBox(
            //                 height: 80,
            //               ),
            //               Text(
            //                 textAlign: TextAlign.center,
            //                 "NPR 9,000",
            //                 style: GoogleFonts.lato(
            //                     fontSize: 28, fontWeight: FontWeight.w900),
            //               ),
            //               const SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 textAlign: TextAlign.center,
            //                 "Non-Residential Package",
            //                 style: GoogleFonts.actor(
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w700,
            //                 ),
            //               ),
            //               const Spacer(),
            //               ElevatedButton(
            //                   style: ButtonStyle(
            //                       backgroundColor:
            //                           MaterialStateProperty.all(Colors.amber)),
            //                   onPressed: () async {
            //                     await launchUrl(
            //                       Uri.parse(
            //                           "https://forms.gle/iekn78p2D1kjMxLV7"),
            //                     );

            //                     // _showDialog(
            //                     //     "Booking session comming soon", context);
            //                   },
            //                   child: const Text(
            //                     "Book Now",
            //                     style: TextStyle(
            //                         fontSize: 18, color: Colors.black),
            //                   )),
            //               const SizedBox(
            //                 height: 25,
            //               )
            //             ],
            //           ),
            //         ),
            //       ),
            //       const Positioned(
            //         top: 0,
            //         right: 50,
            //         child: CircleAvatar(
            //           backgroundColor: Color.fromARGB(255, 106, 213, 243),
            //           radius: 45,
            //           child: Padding(
            //             padding: EdgeInsets.all(18.0),
            //             child: Image(image: AssetImage("assets/resident.png")),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
                            "NPR 13,000",
                            style: GoogleFonts.lato(
                                fontSize: 28, fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, right: 15),
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
                                      MaterialStateProperty.all(Colors.amber)),
                              onPressed: () async {
                                await launchUrl(
                                  Uri.parse(
                                      "https://forms.gle/iekn78p2D1kjMxLV7"),
                                );
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
                        child: Image(image: AssetImage("assets/location.png")),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  SizedBox quiryMethod(
    Size screenSize,
    TextEditingController emailController,
    TextEditingController numberController,
    TextEditingController enquiryController,
  ) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return SizedBox(
      child: Center(
        child: Card(
          shadowColor: Colors.blue,
          color: Colors.white,
          elevation: 2,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            width: screenSize.width >= 1090
                ? screenSize.width * 0.55
                : screenSize.width * 0.9,
            height: screenSize.width >= 650 ? 380 : screenSize.height * 0.65,
            child: Padding(
              padding: screenSize.width >= 650
                  ? const EdgeInsets.only(left: 40.0, right: 60)
                  : const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
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
                    TextFormField(
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
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: numberController,
                      cursorColor: Colors.blue,
                      keyboardType: TextInputType.number,
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
                      validator: (value) {
                        if (value!.isEmpty ||
                            value.length != 10 ||
                            int.tryParse(value) == null) {
                          return 'Please enter a valid 10-digit phone number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your enquiry';
                        }
                        return null;
                      },
                    ),
                    Consumer(
                      builder: (context, ref, child) {
                        final enquiryState = ref
                            .watch(enquiryControllerProvider) as EnquiryState?;
                        final enquiryProvider =
                            ref.watch(enquiryControllerProvider.notifier);

                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                  const Size(250, 42)),
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 204, 239, 248),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                enquiryProvider.sendEnquiry(
                                  emailController.text,
                                  numberController.text,
                                  enquiryController.text,
                                );

                                emailController.clear();
                                numberController.clear();
                                enquiryController.clear();
                              }
                            },
                            child: enquiryState!.isLoading
                                ? const CircularProgressIndicator()
                                : enquiryState.isSuccess
                                    ? const Text(
                                        "Done",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 19),
                                      )
                                    : const Text(
                                        "Send",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19,
                                        ),
                                      ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
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
          content: Text(
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
}
