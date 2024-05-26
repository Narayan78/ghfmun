class CommitteeModel {
  final String committeeName;
  final String reserceTopic;
  final String description;
  final String? chairPic;
  final String? viceChairPic;
  final String? chairName;
  final String? viceChairName;

  CommitteeModel(
      {required this.committeeName,
      required this.description,
      required this.reserceTopic,
      this.chairName,
      this.chairPic,
      this.viceChairName,
      this.viceChairPic});
}

final List<CommitteeModel> committeeList = [
  CommitteeModel(
    committeeName: 'DISEC (The Disarmament and International Security)',
    reserceTopic: 'Preventing arms Race during global economic downturn.',
    description: '',
    chairName: "Eliza Raut",
    chairPic: "assets/chairMembers/Eliza.jpg",
    viceChairName: "",
    viceChairPic: "",
  ),
  CommitteeModel(
    committeeName: 'ECOFIN (Economic and Financial Affairs Council):',
    reserceTopic:
        'Stabilizing financial regulations to prevent recession through international aids',
    description: '',
    chairName: "Tejeshwi Parajuli",
    chairPic: "assets/chairMembers/TejeshwiParajuli.jpg",
    viceChairName: "Rosis KC",
    viceChairPic: "assets/chairMembers/RosisKC.jpg",
  ),
  CommitteeModel(
      committeeName: 'UNHRC (United Nations Human Rights Council)',
      reserceTopic:
          'Impact of economic recession on human rights for vulnerable populations',
      description: "",
      chairName: "Shreeshav Pradhan", //SHREESHAV 
      chairPic: "assets/chairMembers/shree.jpg",
      viceChairName: "Siddhika Gautam",
      viceChairPic: "assets/chairMembers/SiddhikaGautam.jpg"),
  CommitteeModel(
      committeeName: 'UNDP (United Nations Development Programme)',
      reserceTopic: 'Recession\'s Impact on progress towards SDG goals.',
      description: "",
      chairName: "Prayush Shrestha",
      chairPic: "assets/chairMembers/PrayushShrestha.png",
      viceChairName: "Reeva Khanal",
      viceChairPic: "assets/chairMembers/ReevaKhanal.jpeg"),
  CommitteeModel(
      committeeName: 'UNSC (United Nations Security Council)' ,
      reserceTopic:
          'Accessing potential global security implication of economic recession.',
      description: "",
      chairName: "Nischay Shakya",
      chairPic: "assets/chairMembers/NischayShakya.jpg",
      viceChairName: "Shubhashree Pandey",
      viceChairPic: "assets/chairMembers/ShubhashreePandey.jpg"),
];
