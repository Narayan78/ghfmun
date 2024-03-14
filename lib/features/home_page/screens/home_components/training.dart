import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class TrainingSection extends StatelessWidget {
  final AutoScrollController controller = AutoScrollController();

  TrainingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "TRAINING OF PARTICIPANTS",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 130.0, right: 30),
              child: Container(
                height: 270,
                width: 350,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 194, 232, 243),
                      Color.fromARGB(255, 219, 244, 252),
                    ]),
                    // color: const Color.fromARGB(255, 138, 216, 238),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    "assets/guide.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenSize.width * 0.5,
                  child: Text(
                    textAlign: TextAlign.justify,
                    "Participants will undergo comprehensive training provided by the GHF team and professionals."
                    " This training aims to enhance their preparedness and engagement during GHFMUN, ensuring a "
                    "fulfilling experience for all involved.",
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 13, 32, 37),
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                    
                    style: const ButtonStyle(
                   //   splashFactory: MaterialStatePropertyAll,
                      fixedSize: MaterialStatePropertyAll(Size(200, 40)),
                      foregroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 68, 178, 209),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Read More" , style:  TextStyle(fontSize: 19),),)
              ],
            )
          ],
        ),
      ],
    );
  }
}





// Container(
//       height: screenSize.height * 0.6,
//       width: double.infinity,
//       color: const Color(0xff3aafd0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
           
//               const SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 width: screenSize.width * 0.5,
//                 child: const Text(
//                   textAlign: TextAlign.justify,
//                   "Participants will undergo comprehensive training provided by the GHF team and professionals."
//                   " This training aims to enhance their preparedness and engagement during GHFMUN, ensuring a"
//                   " fulfilling experience for all involved.",
//                   style: TextStyle(fontSize: 19),
//                 ),
//               ),
//             ],
//           ),
//           Image.asset(
//             "assets/guide.png",
//             height: 400,
//             width: 400,
//           )
//         ],
//       ),
//     );