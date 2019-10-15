import 'dart:convert';

import 'package:almarssad/data/GoalScorereModel.dart';
import 'package:almarssad/services/Api.dart';

class GoalScorerService {
  static final GoalScorerService goalScorerService =
      GoalScorerService._internal();
  GoalScorerService._internal();

  factory GoalScorerService() {
    return goalScorerService;
  }

  Api api = Api();

  List<GoalScModel> lists;

  Future<List<GoalScModel>> getLists() async {
    lists = new List();
    // await api.httpGet('bins/fyqiq').then((reponse) {
    await api.httpGet('bins/f8uf6').then((reponse) {
      var data = jsonDecode(reponse.body);
      data["goalScorer"].forEach((l) {
        lists.add(GoalScModel().fromJson(l));
      });
      print(lists[0].goals);
    });
    return lists;
  }
}
