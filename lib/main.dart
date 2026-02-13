import 'package:flutter/material.dart';
import 'pages/home_page.dart';

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
      // Set HomePage as the initial route
      home: const HomePage(),
      // Optional: Define named routes for cleaner navigation
      routes: {
        '/home': (context) => const HomePage(),
        '/categories': (context) => const CategoriesPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}