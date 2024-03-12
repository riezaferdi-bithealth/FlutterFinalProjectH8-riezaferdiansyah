import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/country_top_bar.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/list_tile_news.dart';

class countryApp extends StatelessWidget {
  const countryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          topBarCountry(),
          listTileNews(),
        ],
      ),
    );
  }
}