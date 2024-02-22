import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/widgets/box_container.dart';

import '../widgets/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopBar(),
        SingleChildScrollView(
          child: BoxFeed(),
        ),
      ],
    );
  }
}
