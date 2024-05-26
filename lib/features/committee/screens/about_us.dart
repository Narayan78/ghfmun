import 'package:flutter/material.dart';
import 'package:ghfmun/features/committee/screens/components/faqbutton.dart';
import '../../../common/footer.dart';
import '../../../common/logo_container.dart';
import '../../../common/navigation_bar.dart';
import '../../../models/committeeModel.dart';

class Committee extends StatelessWidget {
  const Committee({super.key});

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
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
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
                              SizedBox(width: 55),
                              Text(
                                "Committee",
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
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "ORGANIZING COMMITTEE",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                          const Text(
                            textAlign: TextAlign.justify,
                            "A committed external Organizing Committee, composed of 4-5 seasoned members, will"
                            " meticulously oversee the logistical and administrative facets of GHFMUN. Their primary"
                            " focus is ensuring the seamless execution of the event, guaranteeing a productive and "
                            "memorable experience for all participants.",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "UNIFIED COMMITTEE TOPIC",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: SizedBox(
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      screenSize.width > 800 ? 2 : 1,
                                  childAspectRatio: screenSize.width > 1240
                                      ? screenSize.width * 0.001704
                                      : screenSize.width <= 1240 &&
                                              screenSize.width > 1000
                                          ? screenSize.width * 0.0016
                                          : screenSize.width <= 1000 &&
                                                  screenSize.width > 800
                                              ? screenSize.width * 0.0015
                                              : screenSize.width <= 800 &&
                                                      screenSize.width > 700
                                                  ? 2.5
                                                  : screenSize.width <= 700 &&
                                                          screenSize.width > 570
                                                      ? 2
                                                      : 1.5),
                          shrinkWrap: true,
                          itemCount: committeeList.length,
                          itemBuilder: (context, index) {
                            return _buildCommitteeTile(
                              context,
                              committeeList[index].committeeName,
                              committeeList[index].reserceTopic,
                              committeeList[index].chairName.toString(),
                              committeeList[index].chairPic.toString(),
                              committeeList[index].viceChairName.toString(),
                              committeeList[index].viceChairPic.toString(),
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

Widget _buildCommitteeTile(
  BuildContext context,
  String title,
  String researchTopic,
  //String description,
  String chairName,
  String chairMemberPic,
  String viceChairMemberName,
  String viceChairMemberPic,
) {
  return Card(
    elevation: 0.9,
    // margin: const EdgeInsets.only(bottom: 20.0),
    color: Colors.white,
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
        // Text(
        //   'Research Topic: $researchTopic',
        //   style: const TextStyle(
        //     color: Color.fromARGB(255, 35, 53, 131),
        //     fontStyle: FontStyle.italic,
        //     fontSize: 20,
        //   ),
        // ),

        // Text(
        //   description,
        //   style: const TextStyle(
        //     fontSize: 18,
        //   ),
        // ),
        _committeeProfiles(
          chairName,
          chairMemberPic,
          viceChairMemberName,
          viceChairMemberPic,
        ),
      ],
    ),
  );
}

Widget _committeeProfiles(
  String chairName,
  String chairMemberPic,
  String viceChairMemberName,
  String viceChairMemberPic,
) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  chairMemberPic,
                  fit: BoxFit.cover,
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    // Display a placeholder or error message when image loading fails
                    return Image.asset("assets/errorPerson.png");
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              chairName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const Text("Committee Chair")
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  viceChairMemberPic,
                  fit: BoxFit.cover,
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace? stackTrace) {
                    // Display a placeholder or error message when image loading fails
                    return Image.asset("assets/errorPerson.png");
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              viceChairMemberName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const Text("Committee Vice Chair")
          ],
        ),
      ),
    ],
  );
}
