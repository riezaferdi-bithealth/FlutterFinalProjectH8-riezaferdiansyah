import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/app/screen/channel_page.dart';
import 'package:flutterffh8_riezaferdiansyah/app/screen/country_page.dart';
import 'package:flutterffh8_riezaferdiansyah/app/screen/home_page.dart';
import 'package:flutterffh8_riezaferdiansyah/app/screen/category_page.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/bottom_nav_bar.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/drawer.dart';
import 'package:flutterffh8_riezaferdiansyah/app/widgets/top_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int selectedIndex = 0;

  List screens = [
    HomePage(),
    Category(),
    Country(),
    Channel(),
  ];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //appBar: CustomAppBar(),
        drawer: new SideDrawer(),
        body: screens.elementAt(selectedIndex),
        bottomNavigationBar: BottomBar(
          selectedIndex: selectedIndex,
          onClicked: onClicked,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopBar(),
          bodyApp(),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopBar(),
          categoryApp(),
        ],
      ),
    );
  }
}

class Country extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopBar(),
        countryApp(),
      ],
    );
  }
}

class Channel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopBar(),
          channelApp(),
        ],
      ),
    );
  }
}
