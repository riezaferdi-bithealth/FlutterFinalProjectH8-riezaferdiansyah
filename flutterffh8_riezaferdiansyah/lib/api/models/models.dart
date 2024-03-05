class newsModel {
  String? status;
  String? totalResults;
  ListArticles? articles;

  newsModel({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory newsModel.fromJson(Map<String, dynamic> json) => newsModel(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: ListArticles.fromJson(json["articles"]),
      );
}

class ListArticles {
  String? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  ListArticles({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory ListArticles.fromJson(Map<String, dynamic> json) => ListArticles(
        source: json["source"]["name"],
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: json["publishedAt"],
        content: json["content"],
      );
}
