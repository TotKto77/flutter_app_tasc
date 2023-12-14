import 'package:flutter_app_tasc/logic/models/source.dart';

class HotNewsResponse {
  final List<HotArticles>? articles;

  HotNewsResponse({
    this.articles,
  });

  HotNewsResponse.fromJson(Map<String, dynamic> json)
      : articles = (json['articles'] as List?)
            ?.map((e) => HotArticles.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'articles': articles?.map((e) => e.toJson()).toList()};
}

class HotArticles {
  final dynamic id;
  final String? name;
  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  HotArticles({
    this.id,
    this.name,
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
  factory HotArticles.fromJson(Map<String, dynamic> json) {
    return HotArticles(
      id: json['id'],
      name: json['name'],
      source: json['source'] != null ? Source.fromJson(json['source']) : null,
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }

  // Преобразование объекта Article в JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'source': source?.toJson(),
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt,
      'content': content,
    };
  }
}
