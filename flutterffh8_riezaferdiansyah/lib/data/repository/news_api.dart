import '../models/models.dart';
import 'package:flutterffh8_riezaferdiansyah/app/utilities/enums/country.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class NewsAPI {
  static const _baseUrl = 'newsapi.org';
  static const _apiKey = '';

  Future<List<newsModel>> fetchnewsModel({
    String country = '',
    String category = '',
    String sources = '',
    String q = '',
    int pageSize = 10,
  }) async {
    try {
      List<newsModel> NewsModel = <newsModel>[];

      var queryParams = {
        'country': country,
        'category': category,
        'sources': sources,
        'q': q,
        'pageSize': pageSize,
        'apiKey': _apiKey,
      };

      final url = Uri.https(_baseUrl, 'v2/top-headlines', queryParams);
      final response = await http.get(url);

      final decodedData = response.body;

      final list = json.decode(response.body) as List<dynamic>;
      //print(list);
      return list.map((index) => newsModel.fromJson(index)).toList();
    } catch (error) {
      throw error.toString();
    }
  }
}
