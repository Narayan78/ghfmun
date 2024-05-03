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
    text: "*  10:00 AM - 10:30 AM: Arrival at venue\n"
        "*  10:30 - 11:30: Room Allocation and Preparation\n"
        "*  11:30 - 13:00: opening Ceremoney\n"
        "*  13:00 - 14:00: Lunch. \n"
        "*  14:00 - 16:00: Committee Session 1.\n"
        "*  16:00 - 16:15: Break.\n"
        "*  16:15 - 18:00: Committee Session 2.\n"
        "*  18:00 - 20:00: Socials and Fireside chats.\n"
        "*  20:00 - 21:00: Dinner.\n"
        "*  20:00 - 21:00: Proceed to rooms",
  ),
  AgendaModel(
      headlineText: "Day 2: Friday, May 24, 2024 ",
      title: "Committee Sessions and Special Events",
      text: "*  07:00 - 07:30: Wake up time\n"
          "*  07:30 - 09:30: Breakfast.\n"
          "*  09:30 - 10:00: Preparation.\n"
          "*  10:00 - 12:00: Committee Sessions 3.\n"
          "*  12:00 - 12:15: Break.\n"
          "*  12:15 - 14:00: Committee Session 4.\n"
          "*  14:00 - 16:00: Lunch and recess.\n"
          "*  16:00 - 18:00: Committee Session 5.\n"
          "*  18:00 - 20:00: Socials.\n"
          "*  20:00 - 21:30: Dinner.\n"
          "*  21:30 onwards Proceed to room."),
  AgendaModel(
    headlineText: "Day 3: Saturday, May 25, 2024",
    title: "Diplomacy and Collaboration",
    text: "*  07:30 - 08:00: Wake Up\n"
        "*  08:00 - 09:00: Breakfast.\n"
        "*  09:00 - 09:30: Preparation.\n"
        "*  09:30 - 12:30: Committee Session 6. [GA/Press]\n"
        "*  12:30 - 14:00: Lunch.\n"
        "*  14:00 - 17:00: Final Committee Session 7.\n"
        "*  17:00 - 17:30: Break.\n"
        "*  17:30 - 19:00: Closing Ceremoney.\n"
        "*  19:00 - 20:00: Dinner.\n"
        "*  20:00 - 22:00: Socials.\n"
        "*  22:00 onwards: Proceed towards rooms.\n",
  ),
  AgendaModel(
    headlineText: "Day 3: Saturday, May 26, 2024",
    title: "Diplomacy and Collaboration",
    text: "*  9:00 - 09:30: Wakeup and CheckOut.\n"
        "*  09:30 - 10:30: Breakfast.\n"
        "*  10:30 - 11:30: FeedBack.\n"
        "*  11:30 onwards: Departure From Hotel.\n",
  ),
];
