import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/news_controller.dart';

// CORRECT RELATIVE IMPORTS
import '../views/article_detail_view.dart';
import '../widgets/news_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<NewsController>().loadNews();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsController>(
      builder: (context, controller, _) {
        return RefreshIndicator(
          onRefresh: () => controller.loadNews(isRefresh: true),
          child: controller.articles.isEmpty && controller.isLoading
              ? _buildLoading()
              : controller.error != null
              ? _buildError(controller.error!)
              : ListView.builder(
            controller: _scrollController,
            itemCount: controller.articles.length +
                (controller.hasMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index >= controller.articles.length) {
                return _buildLoading();
              }
              final article = controller.articles[index];
              return NewsCard(
                article: article,
                isBookmarked: controller.isBookmarked(article.id),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ArticleDetailView(article: article),
                  ),
                ),
                onBookmark: () => controller.toggleBookmark(article),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildLoading() => const Padding(
    padding: EdgeInsets.all(16),
    child: Center(child: CircularProgressIndicator()),
  );

  Widget _buildError(String msg) => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Error: $msg'),
        ElevatedButton(
          onPressed: () => context.read<NewsController>().loadNews(),
          child: const Text('Retry'),
        ),
      ],
    ),
  );

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}