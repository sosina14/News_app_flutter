/// NewsArticle model class
/// Contains all properties needed for a news article
class NewsArticle {
  final String id;
  final String title;
  final String description;
  final String content;
  final String imageUrl;
  final String category;
  final DateTime publishedDate;

  const NewsArticle({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.imageUrl,
    required this.category,
    required this.publishedDate,
  });
}