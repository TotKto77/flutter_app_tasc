import 'package:flutter_app_tasc/logic/models/articles.dart';
import 'package:flutter_app_tasc/logic/models/hot_news_response.dart';
import 'package:flutter_app_tasc/logic/models/source.dart';

class TopHeadlinesResponse {
  final List<Article>? articles;

  TopHeadlinesResponse({
    this.articles,
  });

  TopHeadlinesResponse.fromJson(Map<String, dynamic> json)
      : articles = (json['articles'] as List?)
            ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
            .toList();

  // Map<String, dynamic> toJson() => {'articles': articles?.map((e) => e.toJson()).toList()};
}
