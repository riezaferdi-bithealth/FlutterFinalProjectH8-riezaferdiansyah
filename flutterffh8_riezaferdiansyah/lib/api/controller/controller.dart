import '../models/news_models.dart';
import 'package:flutter/material.dart';

class ArticlesDetailProvider extends ChangeNotifier {
  // Stream and Sink Process di sini !!!
  Articles? selectedArticles;

  void selectArticles(Articles data) {
    selectedArticles = data;
    notifyListeners();
  }
}
