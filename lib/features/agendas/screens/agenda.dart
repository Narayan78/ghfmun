import 'package:flutter/material.dart';
import 'package:ghfmun/common/footer.dart';
import '../../../common/logo_container.dart';
import '../../../common/navigation_bar.dart';
import 'components/agendas.dart';

class Agenda extends StatelessWidget {
  const Agenda({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Column(
                children: [
                  const NavigationBarWidget(),
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 96, 155, 204),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        screenSize.width >= 1080
                            ? const Text(
                                "Email: info@globalhelpfoundation.org   Phone: +977 9851041063   Address: Naxal,"
                                " Kathmandu Nepal",
                                style: TextStyle(fontSize: 18),
                              )
                            : screenSize.width >= 760
                                ? const Text(
                                    "Email: info@globalhelpfoundation.org   Phone: +977 9851041063 ",
                                    style: TextStyle(fontSize: 18),
                                  )
                                : const Text(
                                    "Email: info@globalhelpfoundation.org",
                                    style: TextStyle(fontSize: 18),
                                  ),
                        const SizedBox(width: 20)
                      ],
                    ),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    //   height: screenSize.height * 0.5,
                    width: screenSize.width,
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Agenda",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Text(
                                textAlign: TextAlign.justify,
                                "The Global Help Foundation Model United Nations (GHFMUN) is a platform for"
                                " young leaders to engage in diplomatic discussions and debates on global issues."
                                " GHFMUN is a simulation of the United Nations, where students take on the role of "
                                "delegates, representing different countries and debating on global issues. GHFMUN"
                                " is a platform for young leaders to engage in diplomatic discussions and debates on"
                                " global issues. GHFMUN is a simulation of the United Nations, where students take on"
                                "the role of delegates, representing different countries and debating on global issues.",
                                //  overflow: TextOverflow.ellipsis,
                                style: TextStyle( // 
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Motive of GHFMUN 2024",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 70.0, right: 40),
                    child: Text(
                      "GHFMUN 2024 Aims To: "
                      "Foster global understanding and collaboration."
                      "Empower youth by nurturing leadership skills."
                      "Cultivate cultural exchange and dialogue."
                      "Address real-world challenges through innovative solutions."
                      "Provide networking opportunities for personal and professional growth.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: AgendaSection(),
                  ),
                  const FooterSection()
                ],
              ),
              screenSize.width >= 650
                  ? Positioned(
                      top: screenSize.height * 0,
                      left: screenSize.width * 0.07,
                      child: LogoContainer(
                        height: screenSize.height * 0.18,
                        width: screenSize.height * 0.17,
                      ),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
