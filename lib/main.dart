import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/detail_page.dart';
import 'pages/categories_page.dart';
import 'pages/about_page.dart';

void main() {
  runApp(const NewsApp());
}

/// Root application widget
/// Uses MaterialApp for navigation and theming
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/categories': (context) => const CategoriesPage(),
        '/about': (context) => const AboutPage(),
      },
      // Handle named routes with arguments
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          final article = settings.arguments;
          return MaterialPageRoute(
            builder: (context) => DetailPage(),
            settings: RouteSettings(arguments: article),
          );
        }
        return null;
      },
    );
  }
}