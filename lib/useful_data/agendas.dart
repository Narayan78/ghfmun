import 'package:flutter/material.dart';
import 'package:ghfmun/models/agendaModel.dart';
import 'package:google_fonts/google_fonts.dart';

class AgendaSection extends StatelessWidget {
  const AgendaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Agenda",
              style: TextStyle(
                  fontSize: 45, fontWeight: FontWeight.w600, color: Colors.red),
            ),
          ),
          ListView.builder(
              itemCount: agendaModel.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(
                      headlineText: agendaModel[index].headlineText,
                      title: agendaModel[index].title,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        agendaModel[index].text,
                        style:
                             GoogleFonts.actor(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                );
              }),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String headlineText;
  final String title;
  const Header({super.key, required this.headlineText, required this.title});

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
            ],
          ),
        ),
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
                  style:  GoogleFonts.lato(
                      color:const Color.fromARGB(255, 12, 43, 90),
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  title,
                  style:  GoogleFonts.lato(
                      fontSize: 18,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
