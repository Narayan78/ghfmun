class CommitteeModel {
  final String committeeName;
  final String reserceTopic;
  final String description;

  CommitteeModel({
    required this.committeeName,
    required this.description,
    required this.reserceTopic,
  });
}

final List<CommitteeModel> committeeList = [
  CommitteeModel(
    committeeName: 'DISEC (Disarmament and International Security)',
    reserceTopic:
        'Preventing arms Race during global economic downturn.',
    description:
        '',
  ),
  CommitteeModel(
    committeeName: 'ECOFIN (Economic and Financial Affairs Council):',
    reserceTopic:
        'Stabilizing financial regulations to prevent recession through international aids',
    description:
        '',
  ),
  CommitteeModel(
    committeeName: 'UNHRC (Social, Humanitarian and Cultural Committee)',
    reserceTopic:
        'Impact of economic recession on human rights for vulnerable populations',
    description:
        "",
  ),
  CommitteeModel(
    committeeName: 'UNDP (Special Political and Decolonization Committee)',
    reserceTopic:
        'Recession\'s Impact on progress towards SDG goals.',
    description:
        "",
  ),
  CommitteeModel(
    committeeName: 'UNSC',
    reserceTopic:
        'Accessing potential global security implication of economic recession.',
    description:
        "",
  ),
];
