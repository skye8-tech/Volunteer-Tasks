import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import '../models/news_article.dart';
import '../services/news_services.dart';

class NewsController extends ChangeNotifier {
  final NewsService _service = NewsService();
  late Box<NewsArticle> _bookmarkBox;

  List<NewsArticle> _articles = [];
  bool _isLoading = false;
  String? _error;
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isInitialized = false;

  List<NewsArticle> get articles => _articles;
  List<NewsArticle> get bookmarks => _isInitialized ? _bookmarkBox.values.toList() : [];
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get hasMore => _hasMore;
  bool get isInitialized => _isInitialized;

  Future<void> init() async {
    try {
      _bookmarkBox = await Hive.openBox<NewsArticle>('bookmarks');
      _isInitialized = true;
      notifyListeners();
      await loadNews();
    } catch (e) {
      _error = 'Failed to initialize storage: $e';
      _isInitialized = true;
      notifyListeners();
    }
  }

  Future<void> loadNews({bool isRefresh = false}) async {
    if (!_isInitialized) return;

    if (isRefresh) {
      _currentPage = 1;
      _hasMore = true;
      _articles.clear();
    }

    if (!_hasMore || _isLoading) return;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final newArticles = await _service.fetchHeadlines(page: _currentPage);
      if (newArticles.isEmpty) {
        _hasMore = false;
      } else {
        _articles.addAll(newArticles);
        _currentPage++;
      }
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  bool isBookmarked(String id) => _isInitialized && _bookmarkBox.containsKey(id);

  Future<void> toggleBookmark(NewsArticle article) async {
    if (!_isInitialized) return;

    if (isBookmarked(article.id)) {
      await _bookmarkBox.delete(article.id);
    } else {
      await _bookmarkBox.put(article.id, article);
    }
    notifyListeners();
  }
}