import 'dart:convert';

import 'package:http/http.dart';

import 'package:duydunmu_app/model/article.dart';

class ApiService {
  final endPoint = Uri.https("newsapi.org", "/v2/everything", {
    "q": "bitcoin",
    "apiKey": "7b468a18233e4cd8952d83f92e40c10f",
    "language": "en"
  });

  Future<List<Article>> getArticle() async {
    try {
      Response res = await get(endPoint);
      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);

        List<dynamic> body = json['articles'];
        List<Article> articles = body.map((e) => Article.fromJson(e)).toList();

        return articles;
      } else {
        throw ("Can't get the Articles");
      }
    } catch (e) {
      print(e);
      return List.empty();
    }
  }
}
