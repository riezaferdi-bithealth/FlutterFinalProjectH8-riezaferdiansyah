import '../api/models/news_models.dart';
import 'package:flutterffh8_riezaferdiansyah/utilities/enums/country.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class NewsAPI {
  static const _baseUrl = 'newsapi.org';
  static const _apiKey = '';

  Future<List<Articles>> fetchArticles({
    String country = '',
    String category = '',
    String q = '',
    String sources = '',
  }) async {
    try {
      List<Articles> articles = <Articles>[];

      var queryParams = {
        'apiKey': _apiKey,
        'country': sources.isNotEmpty ? "" : country,
        'category': category,
        'sources': sources,
        'q': q,
      };

      final url = Uri.https(_baseUrl, 'v2/top-headlines', queryParams);
      final response = await http.get(url);

      final decodedData = response.body;

      final list = json.decode(response.body) as List<dynamic>;
      //print(list);
      return list.map((index) => Articles.fromJson(index)).toList();
    } catch (error) {
      throw error.toString();
    }
  }
}
