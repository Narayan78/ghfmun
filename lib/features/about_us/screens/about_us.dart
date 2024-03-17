import 'package:flutter/material.dart';
import 'package:ghfmun/features/about_us/screens/components/Faq_button.dart';
import '../../../common/footer.dart';
import '../../../common/logoContainer.dart';
import '../../../common/navigation_bar.dart';
import '../../../models/committeeModel.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
                          SizedBox(
                            height: screenSize.width >= 650 ? 50 : 10,
                          ),
                          const Row(
                            children: [
                              Spacer(),
                              SizedBox(width: 55,),
                              Text(
                                "About Us",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              FaqButton(),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            textAlign: TextAlign.justify,
                            "The Global Help Foundation Model United Nations (GHFMUN) is a platform for young leaders "
                            "to engage in diplomatic discussions and debates on global issues. GHFMUN is a simulation "
                            "of the United Nations, where students take on the role of delegates, representing different"
                            " countries and debating on global issues. GHFMUN is a platform for young leaders to engage "
                            "in diplomatic discussions and debates on global issues. GHFMUN is a simulation of the United"
                            " Nations, where students take on the role of delegates, representing different countries and"
                            " debating on global issues.",
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
                    child: SizedBox(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: committeeList.length,
                          itemBuilder: (context, index) {
                            return _buildCommitteeTile(
                              context,
                              committeeList[index].committeeName,
                              committeeList[index].reserceTopic,
                              //   committeeList[index].description
                            );
                          }),
                    ),
                  ),
                  const FooterSection(),
                ],
              ),
              screenSize.width >= 650
                  ? Positioned(
                      top: screenSize.height * 0,
                      left: screenSize.width * 0.1,
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

Widget _buildCommitteeTile(
  BuildContext context,
  String title,
  String researchTopic,
  //String description,
) {
  return Card(
    elevation: 0.9,
    margin: const EdgeInsets.only(bottom: 20.0),
    color: Colors.white,
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
            'Research Topic: $researchTopic',
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
  );
}
