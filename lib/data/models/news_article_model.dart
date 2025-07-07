import '../../domain/entities/news_article.dart';

class NewsArticleModel extends NewsArticle {
  NewsArticleModel({
    required String title,
    required String description,
  }) : super(title: title, description: description);

  factory NewsArticleModel.fromJson(Map<String, dynamic> json) {
    return NewsArticleModel(
      title: json['title'] ?? 'No Title',
      description: json['description'] ?? '',
    );
  }
}
