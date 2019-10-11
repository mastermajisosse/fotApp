class GoalScModel {
  String name;
  String team;
  int goals;
  int rank;

  GoalScModel({this.goals, this.name, this.team, this.rank});
}

List<GoalScModel> goalScrored = [
  GoalScModel(
    name: 'Mohamed Salah',
    team: 'Liverpool',
    rank: 1,
    goals: 45,
  ),
  GoalScModel(
    name: 'Sadio Mane',
    team: 'Liverpool',
    rank: 2,
    goals: 22,
  ),
  GoalScModel(
    name: 'Pierre Aubamyoung',
    team: 'Liverpool',
    rank: 3,
    goals: 22,
  ),
  GoalScModel(
    name: 'Sergio Aguero',
    team: 'Liverpool',
    rank: 4,
    goals: 21,
  ),
  GoalScModel(
    name: 'Jamie Vardy',
    team: 'Liverpool',
    rank: 5,
    goals: 18,
  ),
  GoalScModel(
    name: 'Harry Kane',
    team: 'Liverpool',
    rank: 6,
    goals: 17,
  ),
  GoalScModel(
    name: 'Raheem Sterling',
    team: 'Liverpool',
    rank: 7,
    goals: 17,
  ),
];
