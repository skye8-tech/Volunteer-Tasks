import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/news_article.dart';

class NewsService {
  final String apiKey = 'ab7e15113d1e4542a324aa15949b4350'; 
  final String baseUrl = 'https://newsapi.org/v2';

  Future<List<NewsArticle>> fetchHeadlines({int page = 1}) async {
    final url = Uri.parse(
        '$baseUrl/top-headlines?country=us&page=$page&pageSize=20&apiKey=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data['articles'] as List)
          .map((json) => NewsArticle.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load news: ${response.statusCode}');
    }
  }
}