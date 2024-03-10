import 'package:flutter/material.dart';

import 'flipable_container.dart';

class WhyUs extends StatelessWidget {
  const WhyUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Why Choose Us",
          style: TextStyle(fontSize: 35),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipContainer(
              frontChild: AnimatedContainer(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                duration: const Duration(microseconds: 50),
                height: 350,
                width: 250,
                child: Image.asset("assets/collab.png"),
              ),
              backChild: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 350,
                width: 250,
              ),
            ),
            FlipContainer(
              frontChild: AnimatedContainer(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                duration: const Duration(microseconds: 50),
                height: 350,
                width: 250,
                child: Image.asset("assets/collab.png"),
              ),
              backChild: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 350,
                width: 250,
              ),
            ),
            FlipContainer(
              frontChild: AnimatedContainer(
                duration: const Duration(microseconds: 50),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 350,
                width: 250,
                child: Image.asset("assets/collab.png"),
              ),
              backChild: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 350,
                width: 250,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
