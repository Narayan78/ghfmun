class AgendaModel {
  final String headlineText;
  final String title;
  final String text;

  AgendaModel(
      {required this.headlineText, required this.text, required this.title});
}

final List<AgendaModel> agendaModel = [
  AgendaModel(
    headlineText: "Day 1: Thursday, May 23, 2024 ",
    title: "Opening Ceremony and Committee Sessions",
    text: "*  Registration and Delegate Check-In\n"
        "*  Keynote Speech on the Importance of Youth Migration and Sustainable Development\n"
        "*  Introduction of Committee Chairs and Ambassadors\n"
        "*  (ECOSOC) Enhancing Economic Opportunities for youth in Developing Nations\n"
        "*  (UNSC) Security Implications of Youth Migration: Managing Transnational Threats\n"
        "*   Delegates showcase their countries' cultures, fostering cultural exchange",
  ),
  AgendaModel(
    headlineText: "Day 2: Friday, May 24, 2024 ",
    title: "Committee Sessions and Special Events",
    text:
        "*  UnHRC: Protecting The Rights of Migrants Youth: Addressing Legal and Social Challenges\n"
        "*  UNESCO: Preserving Cultural Heritages in the Face of Youth Migrations\n"
        "*  IOM: Developing a Comprehensive Global Framework for Managing Youth Migration\n",
  ),
  AgendaModel(
    headlineText: "Day 3: Saturday, May 25, 2024",
    title: "Diplomacy and Collaboration",
    text:
        "*  Committees continue with working sessions or prepare for the final plenary\n"
        "*  Plenary Session\n"
        "*  Presentation of Committee Resolutions\n"
        "*  Q&A and Debate on Resolutions\n"
        "*  Closing Remarks from Committee Chairs and Ambassadors\n"
        "*  Awards and Recognization for Outstanding Delegates, Certificate Distribution\n",
  ),
];
