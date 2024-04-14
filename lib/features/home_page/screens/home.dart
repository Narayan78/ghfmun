import 'package:flutter/material.dart';
import 'package:ghfmun/common/logoContainer.dart';
import 'package:ghfmun/features/home_page/screens/home_components/training.dart';
import 'package:ghfmun/features/home_page/screens/home_components/video_player.dart';
import 'package:ghfmun/features/home_page/screens/home_components/why_us.dart';
import 'package:ghfmun/common/footer.dart';
import 'package:ghfmun/common/navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'home_components/Price_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      NavigationBarWidget(),
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: size.width >= 800
                            ? size.height * 0.9
                            : size.height * 0.37,
                        width: double.infinity,
                        child: Image.asset(
                          "assets/ghfmun_bg.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: size.width >= 800
                            ? size.height * 0.9
                            : size.height * 0.37,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient( 
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Color.fromARGB(255, 0, 0, 0)
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              height: size.width >= 800
                                  ? size.height * 0.8
                                  : size.height * 0.3),
                          SizedBox(
                            width: double.infinity,
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () async {
                                  await launchUrl(
                                    Uri.parse(
                                        "https://forms.gle/tz8u7HkyeMfcae8MA"),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(200, 35),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                ),
                                child: const Text(
                                  "Register Now",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 33, 35, 37),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      SizedBox(
                        width: size.width * 0.9,
                        child: Text(
                          "GHF MUN Empowering Youth to Change the World",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: size.width >= 650 ? 40 : 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Welcome to GHFMUN, a dynamic Model United Nations program dedicated to cultivating the next generation of global leaders."
                      "GHFMUN provides a unique platform for high school and college students to engage in simulated United Nations conferences, "
                      "fostering diplomacy, critical thinking, and cross-cultural understanding."
                      " GHFMUN hosts an annual conference that brings together students from diverse backgrounds. Our conferences feature a variety "
                      "of committees, each focusing on different aspects of international relations and current global challenges.",
                      style: GoogleFonts.actor(
                          textStyle: const TextStyle(fontSize: 20)),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const WhyUs(),
                  TrainingSection(),
                  const SizedBox(
                    height: 50,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left : 120.0),
                        child: Text(
                          "Our Programs ",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(width: 120),
                            VideoPlayWebView(
                              htmlCode:
                                  '<iframe width="480" height="270" src="https://www.youtube.com/embed/7wWMSAy29fU?si=Zaq_fbDpN4sHW69f" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
                            ),
                            SizedBox(width: 50),
                            VideoPlayWebView(
                              htmlCode:
                                  '<iframe width="480" height="270" src="https://www.youtube.com/embed/7wWMSAy29fU?si=Zaq_fbDpN4sHW69f" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const PriceDetail(),
                  const SizedBox(height: 70),
                  const SizedBox(
                    child: FooterSection(),
                  )
                ],
              ),
              Positioned(
                top: size.height * 0,
                left: size.width * 0.07,
                child: LogoContainer(
                  height: size.height * 0.18,
                  width: size.height * 0.17,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
