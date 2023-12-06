import 'dart:convert';

class EverythingResponse {
  final String status;
  final int totalResults;
  final List<Article> articles;

  EverythingResponse(
      {required this.status,
      required this.totalResults,
      required this.articles});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'totalResults': totalResults,
      'articles': articles.map((x) => x.toMap()).toList(),
    };
  }

  factory EverythingResponse.fromMap(Map<String, dynamic> map) {
    return EverythingResponse(
      status: map['status'] as String,
      totalResults: map['totalResults'] as int,
      articles: List<Article>.from(
        (map['articles'] as List<int>).map<Article>(
          (x) => Article.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory EverythingResponse.fromJson(String source) =>
      EverythingResponse.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Article {
  final String title;
  final String publishedAt;
  final String author;
  final String sourceName;

  Article({
    required this.title,
    required this.publishedAt,
    required this.author,
    required this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'publishedAt': publishedAt,
      'author': author,
      'sourceName': sourceName,
    };
  }

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      title: map['title'] as String,
      publishedAt: map['publishedAt'] as String,
      author: map['author'] as String,
      sourceName: map['sourceName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Article.fromJson(String source) =>
      Article.fromMap(json.decode(source) as Map<String, dynamic>);
}
