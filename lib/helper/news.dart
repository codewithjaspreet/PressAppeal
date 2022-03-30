import 'dart:convert';

import '../models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=4dffed12b8644354ab916dea3a963801";
    var ans = Uri.parse(url);
    var response = await http.post(ans);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              description: element['description'],
              author: element['author'],
              content: element['content']);

          news.add(articleModel);
        }
      });
    }
  }
}
