import 'package:flutter/material.dart';
import 'package:ghfmun/features/about_us/screens/components/faqs.dart';

class FaqButton extends StatelessWidget {
  const FaqButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const FaqsPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        );
      },
      child: const Text(
        "FAQs",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
