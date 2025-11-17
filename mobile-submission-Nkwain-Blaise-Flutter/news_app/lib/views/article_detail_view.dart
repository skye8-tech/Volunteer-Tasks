import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controllers/news_controller.dart';
import '../models/news_article.dart';

class ArticleDetailView extends StatelessWidget {
  final NewsArticle article;

  const ArticleDetailView({required this.article});

  // Open full article in browser
  Future<void> _launchArticle() async {
    final uri = Uri.parse(article.sourceUrl);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.read<NewsController>();
    final isBookmarked = controller.isBookmarked(article.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          article.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          IconButton(
            icon: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_border),
            onPressed: () => controller.toggleBookmark(article),
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () => Share.share(article.sourceUrl, subject: article.title),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            if (article.imageUrl.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  article.imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
              ),
            const SizedBox(height: 16),

            // Category
            Chip(
              label: Text(article.category),
              backgroundColor: _getCategoryColor(article.category),
            ),
            const SizedBox(height: 8),

            // Author + Time
            Text(
              'By ${article.author} • ${article.relativeTime}',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
            const SizedBox(height: 16),

            // Title
            Text(
              article.title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Summary (Full teaser from API)
            Text(
              article.summary.isEmpty ? 'No summary available.' : article.summary,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 24),

            // Read Full Article Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _launchArticle,
                icon: const Icon(Icons.open_in_browser),
                label: const Text('Read Full Article'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Color _getCategoryColor(String category) {
    final map = {
      'Health': Colors.red,
      'Technology': Colors.blue,
      'World': Colors.green,
      'Business': Colors.orange,
    };
    return map[category] ?? Colors.grey;
  }
}