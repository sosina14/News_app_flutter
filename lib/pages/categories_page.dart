import 'package:flutter/material.dart';
import '../widgets/category_tile.dart';
import '../data/dummy_news.dart';

/// Categories page - displays list of news categories
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Category data
    final List<Map<String, dynamic>> categories = [
      {
        'name': 'Technology',
        'icon': Icons.computer,
        'color': Colors.blue,
        'count': DummyNews.getArticlesByCategory('Technology').length,
      },
      {
        'name': 'Sports',
        'icon': Icons.sports_soccer,
        'color': Colors.green,
        'count': DummyNews.getArticlesByCategory('Sports').length,
      },
      {
        'name': 'Business',
        'icon': Icons.business_center,
        'color': Colors.orange,
        'count': DummyNews.getArticlesByCategory('Business').length,
      },
      {
        'name': 'Health',
        'icon': Icons.health_and_safety,
        'color': Colors.red,
        'count': DummyNews.getArticlesByCategory('Health').length,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Header image or banner
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              image: const DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1504711434969-e33886168f5c?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80',
                ),
                fit: BoxFit.cover,
                opacity: 0.3,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Browse Categories',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${DummyNews.articles.length} total articles',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Categories list
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return CategoryTile(
                  categoryName: category['name'],
                  icon: category['icon'],
                  color: category['color'],
                  articleCount: category['count'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}