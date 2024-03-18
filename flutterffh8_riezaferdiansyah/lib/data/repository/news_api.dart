import '../models/models.dart';
import 'package:flutterffh8_riezaferdiansyah/app/utilities/enums/country.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

// void main() {
//   NewsAPI().fetchnewsModel();
// }

class NewsAPI {
  static const _baseUrl = 'newsapi.org';
  static const _apiKey = '6a2b4f8d549e4e8a9c6140a496e495e0';

  Future<List<newsModel>> fetchnewsModel({
    // String country = 'id',
    // String category = '',
    // String sources = '',
    // String q = '',
    // String pageSize = "2",
    String? country,
    String? category,
    String? sources,
    String? q,
    String? pageSize,
  }) async {
    try {
      List<newsModel> NewsModel = <newsModel>[];

      var queryParams = {
        'country': country,
        'category': category,
        'sources': sources,
        'q': q,
        'pageSize': pageSize,
        // 'apiKey': _apiKey,
        'apiKey': _apiKey,
      };

      final url = Uri.https(_baseUrl, 'v2/top-headlines', queryParams);
      final response = await http.get(url);

      final decodedData = response.body;

      final list = json.decode(decodedData)['articles'] as List<dynamic>;
      // print(list);
      // return list.where((element) => element['title']!= null).toList();
      return list.map((index) => newsModel.fromJson(index)).toList();
    } catch (error) {
      print("masuk error");
      throw error.toString();
    }
  }
}
