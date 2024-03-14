import 'package:flutter/material.dart';
import 'flipable_container.dart';

class WhyUs extends StatelessWidget {
  const WhyUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 1, 33, 126),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          const Text(
            "BENEFITS OF PARTICIPATION",
            style: TextStyle( fontSize: 35, fontWeight: FontWeight.w600 , color: Colors.white),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlipContainer(
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
                          Image.asset("assets/collab.png" ,),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Insights on International Conferences and Events",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      )),
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
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Gain valuable experience in navigating and contributing to international "
                          "conferences and events.",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                FlipContainer(
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/international_acceptance.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Chances of International Program Acceptance",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
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
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(19.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Enhance your profile for acceptance into other international programs and"
                          " opportunities.",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                
                FlipContainer(
                  frontChild: AnimatedContainer(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 162, 207, 247),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    duration: const Duration(microseconds: 2000),
                    height: 350,
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/career.png"),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Career Enhancement",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
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
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(17.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Develop critical skills, expand your knowledge, and enhance your resume, providing a"
                          " competitive edge in your career",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
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
}
