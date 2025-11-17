import 'package:hive/hive.dart';
part 'news_article.g.dart';

@HiveType(typeId: 0)
class NewsArticle {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String summary;

  @HiveField(3)
  final String content;

  @HiveField(4)
  final String category;

  @HiveField(5)
  final String author;

  @HiveField(6)
  final DateTime publicationDate;

  @HiveField(7)
  final String sourceUrl;

  @HiveField(8)
  final String imageUrl;

  NewsArticle({
    required this.id,
    required this.title,
    required this.summary,
    required this.content,
    required this.category,
    required this.author,
    required this.publicationDate,
    required this.sourceUrl,
    required this.imageUrl,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    final String rawDate = json['publishedAt'] ?? '';
    return NewsArticle(
      id: json['url'] ?? DateTime.now().toString(),
      title: json['title'] ?? 'No Title',
      summary: json['description'] ?? '',
      content: json['content'] ?? json['description'] ?? '',
      category: _mapSourceToCategory(json['source']?['name'] ?? ''),
      author: json['author'] ?? 'Unknown',
      publicationDate: DateTime.tryParse(rawDate) ?? DateTime.now(),
      sourceUrl: json['url'] ?? '',
      imageUrl: json['urlToImage'] ?? '',
    );
  }

  static String _mapSourceToCategory(String source) {
    final map = {
      'BBC News': 'World',
      'CNN': 'World',
      'TechCrunch': 'Technology',
      'Reuters': 'Business',
    };
    return map[source] ?? 'General';
  }

  String get relativeTime {
    final now = DateTime.now();
    final diff = now.difference(publicationDate);
    if (diff.inDays > 0) return '${diff.inDays}d ago';
    if (diff.inHours > 0) return '${diff.inHours}h ago';
    if (diff.inMinutes > 0) return '${diff.inMinutes}m ago';
    return 'Just now';
  }
}