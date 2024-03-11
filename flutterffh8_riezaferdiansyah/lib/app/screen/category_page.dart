import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/widgets/all_news.dart';
import 'package:flutterffh8_riezaferdiansyah/widgets/box_container.dart';
import 'package:flutterffh8_riezaferdiansyah/widgets/category_top_bar.dart';
import 'package:flutterffh8_riezaferdiansyah/widgets/list_tile_news.dart';

class categoryApp extends StatelessWidget {
  const categoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          topBarCategory(),
          // allNews(),
          listTileNews(),
        ],
      ),
    );
  }
}