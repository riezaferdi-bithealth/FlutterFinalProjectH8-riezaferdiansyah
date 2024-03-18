import '../../data/models/models.dart';
import 'package:flutter/material.dart';

class ArticlesDetailProvider extends ChangeNotifier {
  // Stream and Sink Process di sini !!!
  ListArticles? selectedArticles;

  void selectArticles(ListArticles data) {
    selectedArticles = data;
    notifyListeners();
  }
}
