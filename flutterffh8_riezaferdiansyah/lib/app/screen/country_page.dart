import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/country_top_bar.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/list_tile_news.dart';

class countryApp extends StatelessWidget {
  const countryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        topBarCountry(),
        // listTileNews(),
      ],
    );
  }
}