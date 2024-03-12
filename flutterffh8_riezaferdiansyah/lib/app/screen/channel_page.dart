import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/channel_top_bar.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/list_tile_news.dart';

class channelApp extends StatelessWidget {
  const channelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        children: [
          topBarChannel(),
          listTileNews(),
        ],
      ),
    );
  }
}