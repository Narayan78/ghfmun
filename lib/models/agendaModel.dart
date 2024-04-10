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
      text: "*  08:00 AM - 10:00 AM: Registration and Check-in\n"
          "*  10:00 AM - 11:30 AM: Opening Ceremony: Formal inauguration of GHFMUN 2024 with keynote speeches and welcome address.\n"
          "*  11:30 AM - 01:00 PM: Training Session: Comprehensive training provided by GHF team and professionals to enhance participant engagement and preparedness.\n"
          "*  01:00 PM - 02:00 PM: Lunch Break Participants enjoy lunch provided at the venue. \n"
          "*  02:00 PM - 04:00 PM: Committee Session Preparation Participants receive guidelines and prepare for committee sessions.\n"
          "*  04:00 PM - 06:00 PM: Committee Sessions Begin Committee sessions commence with delegates discussing agenda items.\n"
          "*  06:00 PM - 07:00 PM: Networking Reception Opportunity for participants to network and interact with fellow delegates.\n"
          "*  07:00 PM onwards: Entertainment Sessions Evening entertainment activities for participants to unwind and socialize."),
  AgendaModel(
      headlineText: "Day 2: Friday, May 24, 2024 ",
      title: "Committee Sessions and Special Events",
      text:
          "*  08:00 AM - 09:00 AM: Breakfast Participants enjoy breakfast at the venue.\n"
          "*  09:00 AM - 12:00 PM: Committee Sessions Continue Delegates delve deeper into agenda items, draft resolutions, and engage in debates.\n"
          "*  12:00 PM - 01:00 PM: Lunch Break Lunch provided for participants.\n"
          "*  01:00 PM - 04:00 PM: Committee Sessions (Continued) Committee discussions continue, focusing on finding solutions to global financial issues.\n"
          "*  04:00 PM - 06:00 PM: General Assembly Session Joint session to present resolutions and vote on proposed solutions.\n"
          "*  06:00 PM - 07:00 PM: Closing Ceremony Preparation Delegates prepare for the closing ceremony."
          "*  07:00 PM onwards: Cultural Night: An evening of cultural performances and festivities."),
  AgendaModel(
      headlineText: "Day 3: Saturday, May 25, 2024",
      title: "Diplomacy and Collaboration",
      text:
          "*  08:00 AM - 09:00 AM: Breakfast Participants enjoy breakfast at the venue.\n"
          "*  09:00 AM - 12:00 PM: Final Committee Sessions Delegates finalize resolutions and wrap up committee discussions.\n"
          "*  12:00 PM - 01:00 PM: Lunch Break Participants enjoy lunch provided at the venue.\n"
          "*  01:00 PM - 03:00 PM: Closing Ceremony Formal conclusion of GHFMUN 2024 with awards, certificates, and closing remarks.\n"
          "*  03:00 PM - 04:00 PM: Farewell and Departure Participants bid farewell and depart from the venue.\n"),
];
