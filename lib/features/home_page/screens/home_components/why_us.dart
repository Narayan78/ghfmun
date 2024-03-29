import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'flipable_container.dart';

class WhyUs extends StatelessWidget {
  const WhyUs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 8, 74, 136),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          const Text(
            "BENEFITS OF PARTICIPATION",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                flipableContainer(
                  size,
                  "assets/collab.png",
                  "Insights on International Conferences and Events",
                  "Gain valuable experience in navigating and contributing to international "
                      "conferences and events.",
                ),
                const SizedBox(
                  width: 20,
                ),
                flipableContainer(
                  size,
                  "assets/international_acceptance.png",
                  "Chances of International Program Acceptance",
                  "Enhance your profile for acceptance into other international programs and"
                      " opportunities.",
                ),
                const SizedBox(
                  width: 20,
                ),
                flipableContainer(
                  size,
                  "assets/career.png",
                  "Career Enhancement",
                  "Develop critical skills, expand your knowledge, and enhance your resume, providing a"
                      " competitive edge in your career",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  FlipContainer flipableContainer(
    Size size,
    String imageUrl,
    String frontText,
    String backText,
  ) {
    return FlipContainer(
      frontChild: AnimatedContainer(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 162, 207, 247),
          borderRadius: BorderRadius.circular(20),
        ),
        duration: const Duration(microseconds: 50),
        height: 350,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              imageUrl,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: AutoSizeText(
                textAlign: TextAlign.center,
                frontText,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
      backChild: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 244, 244, 244),
              Color.fromARGB(255, 238, 222, 222)
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 350,
        width: 250,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: AutoSizeText(
              textAlign: TextAlign.center,
              backText,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
