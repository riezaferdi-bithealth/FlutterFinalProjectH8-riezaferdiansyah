import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage {
  Widget homePage() {
    return Column(
      children: [
        topBar(),
      ],
    );
  }

  Widget topBar() {
    return Row(
      children: [
        Icon(Icons.bar_chart),
        Text("News API"),
      ],
    );
  }
}
