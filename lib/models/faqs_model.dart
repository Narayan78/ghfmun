class FAQsModel {
  final String question;
  final String answer;

  FAQsModel({required this.answer, required this.question});
}

final List<FAQsModel> faqsModel = [
  FAQsModel(
      question: "1) What is GHFMUN",
      answer: "The Global Help Foundation Model United Nation"
          "(GHFMUN) is a platform for yound leader to engage in diplomatic and debates on global issues"
          "GHFMUN is a simulation of the United Nations, where students taken to the role of delegates"
          "representing different counties and debates on Global Issues."),
  FAQsModel(
      question: "2) Who Can Participate in GHFMUN",
      answer:
          "GHFMUN is open to students from various educational backgrounds, ranging "
          "from high school to university. Participants typically  include students interested in international "
          "relations, diplomacy, and global affairs."),
  FAQsModel(
      question: "3) How do I register for GHFMUN?",
      answer:
          "To register for GHFMUN, visit our Registration page on the website. Follow the instructions  "
          "provided to complete the registration process and secure your spot in the conference. "),
  FAQsModel(
      question: "3) Is there a registration fee?",
      answer:
          "Yes, there is a registration fee associated with participating in GHFMUN. Details about fees,"
          "early bird discounts, and payment options can be found on the Registration page."),
  FAQsModel(
      question: "3) What is the deadline for registration?",
      answer:
          "The registration deadline for GHFMUN is [insert specific date]. Be sure to complete your "
          "registration before this date to ensure your participation."),
  FAQsModel(
      question:
          "4) Are there social events or networking opportunities during the conference?",
      answer:
          "Yes, GHFMUN includes various social events and networking opportunities. These events "
          "provide participants with a chance to connect, share experiences, and build valuable connections."),
  FAQsModel(
      question: "5) How can I prepare for GHFMUN?",
      answer:
          "GHFMUN provides resources such as background guides and research materials to help "
          "participants prepare. Additionally, attend any pre-conference training sessions and familiarize "
          "yourself with the rules of procedure."),
          
];
