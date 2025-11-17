import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/news_article.dart';

class NewsCard extends StatelessWidget {
  final NewsArticle article;
  final bool isBookmarked;
  final VoidCallback onTap;
  final VoidCallback onBookmark;


  const NewsCard({
    required this.article,
    required this.isBookmarked,
    required this.onTap,
    required this.onBookmark,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: article.imageUrl.isNotEmpty
            ? CachedNetworkImage(imageUrl: article.imageUrl, width: 80, fit: BoxFit.cover)
            : null,
        title: Text(article.title, maxLines: 2, overflow: TextOverflow.ellipsis),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(article.summary, maxLines: 3, overflow: TextOverflow.ellipsis),
            SizedBox(height: 4),
            Row(
              children: [
                Chip(label: Text(article.category), labelStyle: TextStyle(fontSize: 12)),
                Spacer(),
                Text(article.relativeTime, style: TextStyle(fontSize: 12)),
              ],
            ),
            Text('By ${article.author}', style: TextStyle(fontSize: 12)),
          ],
        ),
        trailing: IconButton(
          icon: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_border),
          onPressed: onBookmark,
        ),
        onTap: onTap,
      ),
    );
  }
}