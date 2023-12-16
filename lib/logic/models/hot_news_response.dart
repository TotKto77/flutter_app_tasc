import 'package:flutter_app_tasc/logic/models/articles.dart';

class HotNewsResponse {
  final List<Article>? articles;

  HotNewsResponse({
    this.articles,
  });

  HotNewsResponse.fromJson(Map<String, dynamic> json)
      : articles = (json['articles'] as List?)
            ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
            .toList();
}
