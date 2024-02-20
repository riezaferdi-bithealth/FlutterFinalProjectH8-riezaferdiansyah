//import './models/article.dart';
import 'package:flutterffh8_riezaferdiansyah/utils/enums/country.dart';
import 'package:http/http.dart' as http;

class NewsAPI {
  static const _baseUrl = 'newsapi.org';
  static const _apiKey = '';

  Future<List<Article>> fetchArticle(String required country = Country.indonesia, String category = '', String q = '', String sources = '',) async {
    try {
      List<Article> articles = <Article>[];

      var queryParams = {
        'apiKey': _apiKey,
        'country': sources.isNotEmpty ? "" : country.countryCode,
        'category': category,
        'sources': sources,
        'q': q,
      };

      final url = Uri.https(_baseUrl, 'v2/top-headlines', queryParams);
      final response = await http.get(url);

      final decodedData = response.body;

      return await http.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=');
    } catch (error) {}
  }
}
