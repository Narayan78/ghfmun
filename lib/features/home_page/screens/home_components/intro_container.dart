import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionControllerSection extends StatelessWidget {
  const IntroductionControllerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.asset(
            "favicon.png",
            scale: 1,
            color: Colors.black.withOpacity(0.03),
          ),
        ),
        Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to GHFMUN (Global Help Foundation MODEL)",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  child: Image.asset(
                    "assets/teams/Saru.jpg",
                    height: 320, // Adjust height as needed
                    width: 280, // Adjust width as needed
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 300, // Adjust height as needed
                  width: 800,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35.0, left: 25),
                    child: Text(
                      textAlign: TextAlign.justify,
                      "Welcome to GHFMUN, a dynamic Model United Nations program dedicated to cultivating the next generation of global leaders."
                      "GHFMUN provides a unique platform for high school and college students to engage in simulated United Nations conferences, "
                      "fostering diplomacy, critical thinking, and cross-cultural understanding."
                      " GHFMUN hosts an annual conference that brings together students from diverse backgrounds. Our conferences feature a variety "
                      "of committees, each focusing on different aspects of international relations and current global challenges.",
                      style: GoogleFonts.actor(
                          textStyle: const TextStyle(fontSize: 20)),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        Positioned(
          top: 50,
          left: MediaQuery.of(context).size.width * 0.13,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
