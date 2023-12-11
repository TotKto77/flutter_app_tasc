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
  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  HotArticles({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  HotArticles.fromJson(Map<String, dynamic> json)
      : source = (json['source'] as Map<String, dynamic>?) != null
            ? Source.fromJson(json['source'] as Map<String, dynamic>)
            : null,
        author = json['author'] as String?,
        title = json['title'] as String?,
        description = json['description'] as String?,
        url = json['url'] as String?,
        urlToImage = json['urlToImage'] as String?,
        publishedAt = json['publishedAt'] as String?,
        content = json['content'];

  Map<String, dynamic> toJson() => {
        'source': source?.toJson(),
        'author': author,
        'title': title,
        'description': description,
        'url': url,
        'urlToImage': urlToImage,
        'publishedAt': publishedAt,
        'content': content
      };
}

class Source {
  final dynamic id;
  final String? name;

  Source({
    this.id,
    this.name,
  });

  Source.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'] as String?;

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
