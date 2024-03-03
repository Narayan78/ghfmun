import 'package:flutter/material.dart';
import 'package:ghfmun/about_us/about_us.dart';
import 'package:ghfmun/common_widgets/nav_button.dart';
import 'package:ghfmun/contact_us/contact_us.dart';
import 'package:ghfmun/homepage/home_page.dart';
import 'package:ghfmun/join_us/join_us.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 129, 127, 127),
            Color.fromARGB(255, 34, 50, 52),
          ],
        ),
      ),
      height: size.height * 0.1,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // const SizedBox(width: 30),
          //    Image.asset(
          //   "assets/NepaliFlag.png",
          //   height: 120,
          //   width: 120,
          // ),
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


