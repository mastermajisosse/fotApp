class GoalScModel {
  String name;
  String team;
  String img;
  int goals;

  GoalScModel({this.goals, this.name, this.team, this.img});

  GoalScModel fromJson(Map<String, dynamic> json) {
    return GoalScModel(
      name: json['name'],
      team: json['team'],
      img: json['img'],
      goals: json['goals'],
    );
  }
}

// List<GoalScModel> goalScrored = [
//   GoalScModel(
//     name: 'Mohamed Salah',
//     img:
//         'https://talksport.com/wp-content/uploads/sites/5/2018/05/salah_1.jpg?strip=all&w=700&quality=100',
//     team: 'Liverpool',
//     rank: 1,
//     goals: 45,
//   ),
//   GoalScModel(
//     name: 'Sadio Mane',
//     team: 'Liverpool',
//     rank: 2,
//     goals: 22,
//   ),
//   GoalScModel(
//     name: 'Pierre Aubamyoung',
//     team: 'Liverpool',
//     rank: 3,
//     goals: 22,
//   ),
//   GoalScModel(
//     name: 'Sergio Aguero',
//     team: 'Liverpool',
//     rank: 4,
//     goals: 21,
//   ),
//   GoalScModel(
//     name: 'Jamie Vardy',
//     team: 'Liverpool',
//     rank: 5,
//     goals: 18,
//   ),
//   GoalScModel(
//     name: 'Harry Kane',
//     team: 'Liverpool',
//     rank: 6,
//     goals: 17,
//   ),
//   GoalScModel(
//     name: 'Raheem Sterling',
//     team: 'Liverpool',
//     rank: 7,
//     goals: 17,
//   ),
// ];
