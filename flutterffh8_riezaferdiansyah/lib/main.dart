import 'package:flutter/material.dart';
import 'screen/home_page.dart';
import 'widgets/top_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: TopBar(
          title: Text('title'),
          appBar: AppBar(),
          widgets: <Widget>[Icon(Icons.more_vert)],
        ),
        drawer: Drawer(),
        body: HomePage(),
      ),
    );
  }
}
