import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'controllers/news_controller.dart';
import 'models/news_article.dart';
import 'views/home_view.dart';
import 'views/bookmarks_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NewsArticleAdapter());
  runApp(const VolunteerNewsApp());
}

class VolunteerNewsApp extends StatelessWidget {
  const VolunteerNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        final controller = NewsController();
        controller.init();
        return controller;
      },
      child: MaterialApp(
        title: 'Skye8 News',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const MainScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;
  final _screens = [HomeView(), BookmarksView()];

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsController>(
      builder: (context, controller, _) {
        if (!controller.isInitialized) {
          return const Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Loading app...'),
                ],
              ),
            ),
          );
        }

        final bookmarkCount = controller.bookmarks.length;
        return Scaffold(
          body: _screens[_index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _index,
            onTap: (i) => setState(() => _index = i),
            items: [
              const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Badge(
                  label: Text(bookmarkCount > 0 ? '$bookmarkCount' : ''),
                  child: const Icon(Icons.bookmark),
                ),
                label: 'Bookmarks',
              ),
            ],
          ),
        );
      },
    );
  }
}