import 'package:flutter/material.dart';
import 'package:ghfmun/common/nav_button.dart';
import 'package:ghfmun/features/contact_us/screens/contact_us.dart';
import 'package:ghfmun/features/home_page/screens/home.dart';
import 'package:ghfmun/features/join_us/screens/join_us.dart';
import '../features/about_us/screens/about_us.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print("width :" "${size.width}");
    print("height :" "${size.height}");
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 4, 65, 116)),
      height: size.height * 0.1,
      width: size.width,
      child: size.width >= 650
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(),
                navigationButton(
                    context, "Home", const HomePage(), "contact-us"),
                navigationButton(
                    context, "About us", const AboutUs(), "about-us"),
                navigationButton(context, "join us", const JoinUs(), "join-us"),
                navigationButton(
                    context, "contact us", const ContactUs(), "contact-us"),
                SizedBox(width: size.width * 0.002)
              ],
            )
          : Row(
              children: [
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: () {
                    showMenu(
                      context: context,
                      position: const RelativeRect.fromLTRB(100, 0, 0, 0),
                      items: [
                       const PopupMenuItem<int>(
                          value: 0,
                          child: Text('Home'),
                        ),
                       const PopupMenuItem<int>(
                          value: 1,
                          child: Text('About Us'),
                        ),
                       const PopupMenuItem<int>(
                          value: 2,
                          child: Text('Join Us'),
                        ),
                       const PopupMenuItem<int>(
                          value: 3,
                          child: Text('Contact Us'),
                        ),
                      ],
                    ).then((value) {
                     
                      if (value != null) {
                        switch (value) {
                          case 0:
                            navigateToPage(context, const HomePage(), "home-page" );
                            break;
                          case 1:
                            navigateToPage(context, const AboutUs(), "About us" );
                            break;
                          case 2:
                             navigateToPage(context, const JoinUs(), "join-us" );
                            break;
                          case 3:
                            navigateToPage(context, const ContactUs(), "contact-us" );
                            break;
                        }
                      }
                    });
                  },
                ),
                const SizedBox(
                  width: 30,
                )
              ],
            ),
    );
  }

  NavigationButton navigationButton(
      BuildContext context, String text, Widget page, String url) {
    return NavigationButton(
      buttonText: text,
      onPressed: () {
        navigateToPage(context, page, url);
      },
    );
  }
}

void navigateToPage(BuildContext context, Widget page, String url) {
  Navigator.pop(context);
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
//  html.window.history.pushState(null, 'Page', url);
}
