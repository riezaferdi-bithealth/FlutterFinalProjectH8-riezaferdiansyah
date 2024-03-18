import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/all_news.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/box_container.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/category_top_bar.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/list_tile_news.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/search_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> data = [
    'Apple',
    'Banana',
    'Cherry',
  ];

  List<String> searchResult = [];

  void onQueryChanged(String query) {
    setState(() {
      searchResult = data
          .where(
              (element) => element.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            children: [
              SearchTopBar(),
              // Column(
              //   children: List.generate(searchResult.length, (index) {
              //     return ListTile(
              //       title: Text(searchResult[index]),
              //     );
              //   }),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
