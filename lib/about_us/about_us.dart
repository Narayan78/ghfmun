import 'package:flutter/material.dart';


import '../common_widgets/footer.dart';
import '../common_widgets/logoContainer.dart';
import '../common_widgets/navigation_bar.dart';

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
              children: [
                 NavigationBarWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: screenSize.width,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Text(
                              "About Us",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          textAlign: TextAlign.justify,
                          "The Global Humanitarian Forum Model United Nations (GHFMUN) is a platform for young leaders to engage in diplomatic discussions and debates on global issues. GHFMUN is a simulation of the United Nations, where students take on the role of delegates, representing different countries and debating on global issues. GHFMUN is a platform for young leaders to engage in diplomatic discussions and debates on global issues. GHFMUN is a simulation of the United Nations, where students take on the role of delegates, representing different countries and debating on global issues.",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
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
                  child: Column(
                    children: [
                      _buildCommitteeTile(
                        context,
                        'United Nations Echonomic and Social Council (ECOSOC)',
                        'Enhancing Echonomic Opportunities for youth in the Developing Nations',
                        'This committee can focus on Formulating policies to promote echonomic development and employment opportunities for youth in developing countries, addressing challenges related to povery, education, and sustainable growth.',
                      ),
                      _buildCommitteeTile(
                        context,
                        'United Nations Security Council (UNSC):',
                        'Rearch Topic: Security Implications of Youth Migration; Managing Transnational Treats',
                        'This committee can explore the security aspects of youth migration, discussing potential transnational threats and '
                            'formulating strategies to ensure the security of both sending and receiving countries.',
                      ),
                      _buildCommitteeTile(
                        context,
                        'Committee: United Nations Human Rights Council (UNHRC)',
                        'Research Topic: Protecting the rights of Migrant Youth: Addressing Legal and Social Challenges',
                        "This committee can focus on human rights issues related to youth migration, addressing legal rights, culture "
                            "adaption, and social integration, and proposing measures to protect the rights of migrant youth",
                      ),
                      _buildCommitteeTile(
                        context,
                        ' Committee : International Organization for Migration (IOM)',
                        'Research Topic: Developing a comprehensive Global Framework for Managing Youth Migration',
                        "This Committee can focus on creating a global framework for managing youth migration, discussing collaboration "
                            "policy coordination, and sustainable solutions to address the challenges and opportunities associated with youth migration",
                      ),
                      _buildCommitteeTile(
                        context,
                        'Committee: United Nations Educational, Scientific and Cultural Organization (UNESCO)',
                        'Research Topic: Preserving Cultural Heritage in the Face of Youth Migration',
                        "This committee can explore the impact of youth migration on cultural heritage, discussing the measures to "
                            " preserve and promote cultural diversity, language, and traditionals in both home and host countries",
                      ),
                    ],
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
          Text(
            description,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
