import '../../domain/entities/news_article.dart';
import '../../domain/repositories/news_repository.dart';
import '../models/news_article_model.dart';
import '../../core/network/api_client.dart';

class NewsRepositoryImpl implements NewsRepository {
  final ApiClient apiClient;

  NewsRepositoryImpl(this.apiClient);

  @override
  Future<List<NewsArticle>> fetchNews() async {
    final data = await apiClient.get('/top-headlines?country=us');
    final articles = data['articles'] as List;
    return articles.map((json) => NewsArticleModel.fromJson(json)).toList();
  }
}
