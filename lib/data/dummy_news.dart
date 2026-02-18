import '../models/news_model.dart';

/// Static dummy data for news articles
/// Using placeholder images from Unsplash (free to use)
class DummyNews {
  static const List<NewsArticle> articles = [
    NewsArticle(
      id: '1',
      title: 'New AI Breakthrough in Healthcare',
      description: 'Artificial intelligence system diagnoses diseases with 99% accuracy',
      content: '''
        Researchers have developed a groundbreaking AI system that can diagnose multiple diseases 
        with unprecedented accuracy. The system, trained on millions of medical images, can detect 
        early signs of cancer, heart disease, and neurological conditions.

        "This technology will revolutionize healthcare delivery," said Dr. Sarah Johnson, lead 
        researcher. "Patients in remote areas can now access expert-level diagnostic capabilities."

        The AI model uses deep learning algorithms to analyze medical scans and patient data, 
        providing results in seconds. Clinical trials are scheduled to begin next month across 
        20 major hospitals.

        While the technology shows promise, experts caution that it should complement rather 
        than replace human doctors. The human touch remains crucial in patient care and 
        treatment decisions.
      ''',
      imageUrl: 'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      category: 'Technology',
      publishedDate: DateTime(2024, 1, 15),
    ),
    NewsArticle(
      id: '2',
      title: 'Champions League Final: Dramatic Finish',
      description: 'Last-minute goal decides thrilling championship match',
      content: '''
        In one of the most exciting Champions League finals in history, underdogs FC Stellar 
        secured a dramatic 2-1 victory against defending champions United City. The winning 
        goal came in the 94th minute, sending fans into delirium.

        The match was evenly contested throughout, with both teams showing exceptional skill 
        and determination. United City took an early lead in the first half, but Stellar 
        equalized just before halftime.

        "This is a dream come true," said winning captain Marco Rossi. "We believed in 
        ourselves until the very end, and it paid off."

        The victory marks Stellar's first European trophy in the club's 50-year history, 
        sparking celebrations across the city that continued well into the night.
      ''',
      imageUrl: 'https://images.unsplash.com/photo-1489944440615-453fc2b6a9a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      category: 'Sports',
      publishedDate: DateTime(2024, 1, 14),
    ),
    NewsArticle(
      id: '3',
      title: 'Global Markets Reach New Heights',
      description: 'Tech stocks lead rally as investor confidence grows',
      content: '''
        Stock markets worldwide hit record highs this week, driven by strong corporate 
        earnings and optimism about economic growth. The technology sector led the charge, 
        with several companies reporting better-than-expected quarterly results.

        The S&P 500 crossed the 5,000 mark for the first time, while Asian and European 
        markets also posted significant gains. Analysts attribute the rally to easing 
        inflation concerns and resilient consumer spending.

        "We're seeing a perfect storm of positive factors," said market analyst James Chen. 
        "Corporate profits are strong, interest rates appear stable, and innovation across 
        sectors is driving growth."

        However, some experts warn of potential market corrections and advise investors to 
        maintain diversified portfolios.
      ''',
      imageUrl: 'https://images.unsplash.com/photo-1611974789855-9c2a0a7236a3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      category: 'Business',
      publishedDate: DateTime(2024, 1, 13),
    ),
    NewsArticle(
      id: '4',
      title: 'New Study Reveals Benefits of Mediterranean Diet',
      description: 'Research confirms heart health advantages of traditional eating habits',
      content: '''
        A comprehensive 10-year study has confirmed what nutritionists have long suspected: 
        the Mediterranean diet significantly reduces the risk of heart disease and stroke. 
        The study followed 25,000 participants across 15 countries.

        Participants who closely followed the diet, rich in olive oil, nuts, fish, and fresh 
        produce, showed 30% lower rates of cardiovascular events compared to those who 
        followed standard dietary guidelines.

        "The evidence is overwhelming," said Dr. Maria Papadopoulos, lead author of the study. 
        "This isn't just a diet—it's a sustainable lifestyle approach that delivers real 
        health benefits."

        The research also found positive effects on brain health and longevity, adding to 
        the growing body of evidence supporting this eating pattern.
      ''',
      imageUrl: 'https://images.unsplash.com/photo-1490645935967-10de6ba17061?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2053&q=80',
      category: 'Health',
      publishedDate: DateTime(2024, 1, 12),
    ),
    NewsArticle(
      id: '5',
      title: 'Space Tourism Takes Off',
      description: 'First commercial space hotel announces opening date',
      content: '''
        The era of space tourism has officially begun with the announcement that the world's 
        first space hotel will open for guests in 2026. Orbital Haven, a luxury space station, 
        will accommodate up to 100 guests at a time for week-long stays.

        Prices start at $5 million per person, including training, transportation, and 
        accommodation. The hotel features panoramic Earth-view suites, a zero-gravity spa, 
        and gourmet dining prepared by Michelin-starred chefs.

        "This is the next frontier in luxury travel," said CEO Elena Rodriguez. "We're making 
        the dream of space travel accessible to civilians while maintaining the highest 
        safety standards."

        The announcement has already generated thousands of reservations, with priority given 
        to those who booked during the pre-sale phase last year.
      ''',
      imageUrl: 'https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2072&q=80',
      category: 'Technology',
      publishedDate: DateTime(2024, 1, 11),
    ),
  ];

  /// Helper method to get articles by category
  static List<NewsArticle> getArticlesByCategory(String category) {
    return articles.where((article) => article.category == category).toList();
  }

  /// Helper method to get article by id
  static NewsArticle? getArticleById(String id) {
    try {
      return articles.firstWhere((article) => article.id == id);
    } catch (e) {
      return null;
    }
  }
}