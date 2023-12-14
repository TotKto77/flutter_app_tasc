// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

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

  Map<String, dynamic> toJson() =>
      {'articles': articles?.map((e) => e.toJson()).toList()};
}

class Article {
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

  Article({
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

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
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
