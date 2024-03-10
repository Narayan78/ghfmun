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
        'Examining the economic implications of global arms trade and its impact on international security.',
    description:
        '',
  ),
  CommitteeModel(
    committeeName: 'ECOFIN (Economic and Financial Affairs Council):',
    reserceTopic:
        'Formulating strategies to navigate the current global financial crisis and proposing'
        ' sustainable economic solutions',
    description:
        '',
  ),
  CommitteeModel(
    committeeName: 'SOCHUM (Social, Humanitarian and Cultural Committee)',
    reserceTopic:
        'Analyzing and mitigating the socio-economic impact of the current financial crisis on vulnerable populations.',
    description:
        "",
  ),
  CommitteeModel(
    committeeName: 'SPECPOL (Special Political and Decolonization Committee)',
    reserceTopic:
        'Investigating the role of economic policies in post-colonial nations and ensuring equitable development',
    description:
        "",
  ),
  CommitteeModel(
    committeeName: 'Administrative and Budgetary',
    reserceTopic:
        'Allocating resources for global economic recovery and future preparedness',
    description:
        "",
  ),
];
