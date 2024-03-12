import '../../data/models/models.dart';
import 'package:flutter/material.dart';

class ArticlesDetailProvider extends ChangeNotifier {
  // Stream and Sink Process di sini !!!
  newsModel? selectedArticles;

  void selectArticles(newsModel data) {
    selectedArticles = data;
    notifyListeners();
  }
}
