import 'dart:convert';

import 'package:almarssad/data/articleModal.dart';
import 'package:almarssad/services/Api.dart';

class ArticleService {
  static final ArticleService articleService = ArticleService._internal();
  ArticleService._internal();

  factory ArticleService() {
    return articleService;
  }

  Api api = Api();

  List<ArticleModal> lists;

  Future<List<ArticleModal>> getLists() async {
    lists = new List();
    // await api.httpGet('bins/fyqiq').then((reponse) {
    await api.httpGet('bins/f8uf6').then((reponse) {
      var data = jsonDecode(reponse.body);
      data.forEach((l) {
        lists.add(ArticleModal().fromJson(l));
      });
    });
    return lists;
  }
}
