import 'package:flutter/material.dart';
import 'package:ghfmun/common/footer.dart';
import '../../../common/logoContainer.dart';
import '../../../common/navigation_bar.dart';
import 'components/agendas.dart';

class JoinUs extends StatelessWidget {
  const JoinUs({super.key});

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
                const NavigationBarWidget(),
                Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  height: screenSize.height - screenSize.height * 0.5,
                  width: screenSize.width,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Join Us",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            textAlign: TextAlign.justify,
                            "The Global Help Foundation Model United Nations (GHFMUN) is a platform for"
                            " young leaders to engage in diplomatic discussions and debates on global issues."
                            " GHFMUN is a simulation of the United Nations, where students take on the role of "
                            "delegates, representing different countries and debating on global issues. GHFMUN"
                            " is a platform for young leaders to engage in diplomatic discussions and debates on"
                            " global issues. GHFMUN is a simulation of the United Nations, where students take on"
                            "the role of delegates, representing different countries and debating on global issues.",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: AgendaSection(),
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
