import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/news_controller.dart';
import '../widgets/news_card.dart';
import 'article_detail_view.dart';

class BookmarksView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NewsController>(
      builder: (context, controller, _) {
        final bookmarks = controller.bookmarks;
        return bookmarks.isEmpty
            ? Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.bookmark_border, size: 64, color: Colors.grey),
              SizedBox(height: 16),
              Text('No bookmarks yet'),
            ],
          ),
        )
            : ListView.builder(
          itemCount: bookmarks.length,
          itemBuilder: (context, index) {
            final article = bookmarks[index];
            return NewsCard(
              article: article,
              isBookmarked: true,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArticleDetailView(article: article),
                ),
              ),
              onBookmark: () => controller.toggleBookmark(article),
            );
          },
        );
      },
    );
  }
}