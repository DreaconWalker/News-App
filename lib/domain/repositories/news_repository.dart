import '../entities/news_article.dart';

abstract class NewsRepository {
  Future<List<NewsArticle>> fetchNews();
}
