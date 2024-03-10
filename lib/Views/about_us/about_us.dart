import 'package:flutter/material.dart';
import 'package:ghfmun/models/committeeModel.dart';
import 'package:ghfmun/Views/faqs/faqs.dart';

import '../../common_widgets/footer.dart';
import '../../common_widgets/logoContainer.dart';
import '../../common_widgets/navigation_bar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NavigationBarWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: screenSize.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            const Padding(
                              padding: EdgeInsets.only(left: 150.0),
                              child: Text(
                                "About Us",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 150,
                              height: 40,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5,
                                      textStyle:
                                          const TextStyle(color: Colors.white),
                                      foregroundColor: Colors.white,
                                      backgroundColor: const Color.fromARGB(
                                          255, 7, 88, 155)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            const FaqsPage(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return FadeTransition(
                                            opacity: animation,
                                            child: child,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text("FAQs")),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          textAlign: TextAlign.justify,
                          "The Global Humanitarian Forum Model United Nations (GHFMUN) is a platform for"
                          " young leaders to engage in diplomatic discussions and debates on global issues."
                          " GHFMUN is a simulation of the United Nations, where students take on the role of"
                          " delegates, representing different countries and debating on global issues. GHFMUN"
                          " is a platform for young leaders to engage in diplomatic discussions and debates on"
                          " global issues. GHFMUN is a simulation of the United Nations, where students take on"
                          " the role of delegates, representing different countries and debating on global issues.",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "Committee",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: committeeList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildCommitteeTile(
                            context,
                            committeeList[index].committeeName,
                            committeeList[index].reserceTopic,
                            committeeList[index].description,
                            screenSize
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const FooterSection()
              ],
            ),
            Positioned(
              top: screenSize.height * 0,
              left: screenSize.width * 0.1,
              child: LogoContainer(
                height: screenSize.height * 0.2,
                width: screenSize.height * 0.17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildCommitteeTile(
  BuildContext context,
  String title,
  String researchTopic,
  String description,
  final screenSize,
) {
  return Card(
    elevation: 0.9,
    margin: const EdgeInsets.only(bottom: 20.0),
    color: Colors.white,
    child: SizedBox(
      width: screenSize.width * 0.75,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Role: $researchTopic',
              style: const TextStyle(
                color: Color.fromARGB(255, 35, 53, 131),
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8.0),
            // Text(
            //   description,
            //   style: const TextStyle(
            //     fontSize: 18,
            //   ),
            // ),
          ],
        ),
      ),
    ),
  );
}
