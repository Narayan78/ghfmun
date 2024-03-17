import 'package:flutter/material.dart';
import 'package:ghfmun/common/navigation_bar.dart';
import 'package:ghfmun/features/home_page/screens/home.dart';

class LogoContainer extends StatelessWidget {
  final double height;
  final double width;
  const LogoContainer({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateToPage(context, const HomePage(), "home-page");
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 1, 41, 74),
      
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
          //  color: Color.fromARGB(255, 94, 153, 236),
      
          // Gradient ),
        ),
        height: height,
        width: width,
        child: Image.asset("assets/ghfmun_logo.png"),
      ),
    );
  }
}

