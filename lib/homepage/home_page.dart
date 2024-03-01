import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ghfmun/common_widgets/navigation_bar.dart';

import '../common_widgets/logoContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                    CarouselSlider(
                      options: CarouselOptions(
                        height: size.height * 0.88,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 10),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 500),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: [
                        "https://static.wixstatic.com/media/8c42d0_a4acba54fa3a472faa3bb11eb56ae4b1~mv2.png/v1/fill/w_1700,h_628,al_c,q_90,enc_auto/8c42d0_a4acba54fa3a472faa3bb11eb56ae4b1~mv2.png",
                        "https://static.wixstatic.com/media/8c42d0_9a95292d0d714d3fb05b8572363217de~mv2.jpg/v1/fill/w_1680,h_620,al_c,q_85,enc_auto/8c42d0_9a95292d0d714d3fb05b8572363217de~mv2.jpg",
                        "https://static.wixstatic.com/media/8c42d0_9a95292d0d714d3fb05b8572363217de~mv2.jpg/v1/fill/w_1680,h_620,al_c,q_85,enc_auto/8c42d0_9a95292d0d714d3fb05b8572363217de~mv2.jpg"
                      ].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Image.network(
                                i.toString(),
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Container(
                      height: size.height * 0.88,
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
                    Positioned(
                      bottom: size.height * 0.05,
                      left: size.width * 0.3,
                      child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 0, 0, 0),
                                Colors.transparent,
                                Color.fromARGB(255, 0, 0, 0)
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(50),
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          height: size.height * 0.2,
                          width: size.width * 0.4,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "GHF MUN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "The Global Help Foundation Model United Nations",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      // primary: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                    ),
                                    child: const Text(
                                      "Register Now",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 33, 35, 37),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 18,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      side: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                    ),
                                    child: const Text(
                                      "Learn More",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  children: [
                    Spacer(),
                    Text(
                      "GHF MUN Empowering Youth to Change the World",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    Spacer(),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Text(
                    textAlign: TextAlign.justify,
                    "Welcome to GHF MUN, a dynamic and innovative Model United Nations conference that is committed to providing a "
                    "platform for young leaders to engage in diplomatic discussions and debates on global issues. GHF MUN is a simulation of the "
                    "United Nations, where students take on the role of delegates, representing different countries and debating on global issues."
                    "GHF MUN is a platform for young leaders to engage in diplomatic discussions and debates on global issues. GHF MUN is a simulation "
                    "platform for young leaders to engage in diplomatic discussions and debates on global issues. GHF MUN is a simulation of the "
                    "of the United Nations, where students take on the role of delegates, representing different countries and debating on global issues.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            Positioned(
              top: size.height * 0,
              left: size.width * 0.1,
              child: LogoContainer(
                height: size.height * 0.2,
                width: size.height * 0.17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
