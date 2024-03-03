import 'package:flutter/material.dart';

class AgendaSection extends StatelessWidget {
  const AgendaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Agenda",
              style: TextStyle(
                  fontSize: 45, fontWeight: FontWeight.w600, color: Colors.red),
            ),
          ),
          Header(
            headlineText: "Day 1: Saturday, April 6, 2024 ",
            discription: "Opening Ceremony and Committee Sessions",
          ),
          Padding(
            padding: EdgeInsets.only(left : 20.0),
            child: Text(
              "*  Registration and Delegate Check-In\n"
              "*  Keynote Speech on the Importance of Youth Migration and Sustainable Development\n"
              "*  Introduction of Committee Chairs and Ambassadors\n"
              "*  (ECOSOC) Enhancing Economic Opportunities for youth in Developing Nations\n"
              "*  (UNSC) Security Implications of Youth Migration: Managing Transnational Threats\n"
              "*   Delegates showcase their countries' cultures, fostering cultural exchange"
              ,
              style: TextStyle(fontSize: 20 , color: Colors.black),
            ),
          ),
         
          SizedBox(height: 25,),
           Header(
            headlineText: "Day 2: Sunday, April 7, 2024 ",
            discription: "Committee Sessions and Special Events",
          ),
            Padding(
            padding: EdgeInsets.only(left : 20.0),
            child: Text(
              "*  UnHRC: Protecting The Rights of Migrants Youth: Addressing Legal and Social Challenges\n"
              "*  UNESCO: Preserving Cultural Heritages in the Face of Youth Migrations\n"
              "*  IOM: Developing a Comprehensive Global Framework for Managing Youth Migration\n"
            
              ,
              style: TextStyle(fontSize: 20 , color: Colors.black),
            ),
          ),

         SizedBox(height: 25,),
           Header(
            headlineText: "Day 3: Monday, April 8, 2024 ",
            discription: "Diplomacy and Collaboration",
          ),
            Padding(
            padding: EdgeInsets.only(left : 20.0),
            child: Text(
              "*  Committees continue with working sessions or prepare for the final plenary\n"
              "*  Plenary Session\n"
              "*  Presentation of Committee Resolutions\n"
             "*  Q&A and Debate on Resolutions\n"
             "*  Closing Remarks from Committee Chairs and Ambassadors\n"
             "*  Awards and Recognization for Outstanding Delegates, Certificate Distribution\n"
              ,
              style: TextStyle(fontSize: 20 , color: Colors.black),
            ),
          ),

          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final headlineText;
  final discription;
  const Header(
      {super.key, required this.headlineText, required this.discription});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: Container(
          height: 80,
          width: double.infinity - 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 244, 244, 244),
                    Color.fromARGB(255, 216, 214, 214)
                  ])),
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    headlineText,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 105, 27, 119),
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    discription,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontStyle: FontStyle.italic),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          )),
    );
  }
}
