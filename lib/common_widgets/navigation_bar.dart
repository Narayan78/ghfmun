import 'package:flutter/material.dart';
import 'package:ghfmun/Views/about_us/about_us.dart';
import 'package:ghfmun/common_widgets/nav_button.dart';
import 'package:ghfmun/Views/contact_us/contact_us.dart';
import 'package:ghfmun/Views/homepage/home_page.dart';
import 'package:ghfmun/Views/join_us/join_us.dart';
import 'dart:html' as html;

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const  BoxDecoration(

        color: Color.fromARGB(255, 4, 65, 116)
        // gradient: LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //   colors: [
        //     Color.fromARGB(255, 2, 63, 112)
        //     // Color.fromARGB(255, 129, 127, 127),
        //     // Color.fromARGB(255, 34, 50, 52),
        //   ],
        // ),
      ),
      height: size.height * 0.1,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          NavigationButton(
            buttonText: "Home",
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const HomePage(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
              );
              html.window.history.pushState(null, 'Home Screen', '/home-page');
            },
          ),
          NavigationButton(
            buttonText: "About Us",
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const AboutUs(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
              );
              html.window.history.pushState(null, 'About Us', '/about-us');
            },
          ),

          NavigationButton(
            buttonText: "Join Us",
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const JoinUs(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
              );
              html.window.history.pushState(null, 'Join Us', '/join-us');
            },
          ),

          NavigationButton(
            buttonText: "Contact Us",
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const ContactUs(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
              );
              html.window.history.pushState(null, 'contact us', '/contact-us');
            },
          ),

          // const Text(
          //   "Nepal",
          //   style: TextStyle(
          //       color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
          // ),
          const SizedBox(width: 150)
        ],
      ),
    );
  }
}
