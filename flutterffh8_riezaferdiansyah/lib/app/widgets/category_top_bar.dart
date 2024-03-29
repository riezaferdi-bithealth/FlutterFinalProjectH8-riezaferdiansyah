import 'package:flutterffh8_riezaferdiansyah/app/utilities/enums/category.dart';
import 'package:flutter/material.dart';

class topBarCategory extends StatefulWidget {
  const topBarCategory({super.key});

  @override
  State<topBarCategory> createState() => _topBarCategoryState();
}

class _topBarCategoryState extends State<topBarCategory>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  _handleTabSelection() {
    setState(() {});
  }

  @override
  void initState() {
    _tabController = TabController(length: 7, vsync: this);
    _tabController?.addListener(_handleTabSelection);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return tabTopBarView();
  }
  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     height: 46,
  //     child: ListView(
  //       padding: const EdgeInsets.only(bottom: 16),
  //       scrollDirection: Axis.horizontal,
  //       shrinkWrap: true,
  //       children: <Widget>[
  //         SizedBox(
  //           width: 16,
  //         ),
  //         // _textBoxDefault(Category.all.name),
  //         _textBoxDefault(Category.general.name),
  //         _textBoxCategory(Category.science.name),
  //         _textBoxCategory(Category.business.name),
  //         _textBoxCategory(Category.technology.name),
  //         _textBoxCategory(Category.sports.name),
  //         _textBoxCategory(Category.health.name),
  //         _textBoxCategory(Category.entertainment.name),
  //         SizedBox(
  //           width: 16,
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget tabTopBarView() {
    return TabBar(
      controller: _tabController,
      indicatorColor: Colors.grey,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      isScrollable: true,
      tabs: [
        Tab(
          text: Category.general.name,
        ),
        Tab(
          text: Category.science.name,
        ),
        Tab(
          text: Category.business.name,
        ),
        Tab(
          text: Category.technology.name,
        ),
        Tab(
          text: Category.sports.name,
        ),
        Tab(
          text: Category.health.name,
        ),
        Tab(
          text: Category.entertainment.name,
        ),
        // Tab(
        //   text: 'Sale',
        //   // icon: Icon(Icons.directions_car,
        //   //     color: _tabController!.index == 0 ? Colors.black : Colors.grey),
        // ),
      ],
    );
  }

  Widget tabBarContentSection() {
    return Expanded(
      child: TabBarView(
        physics: BouncingScrollPhysics(),
        controller: _tabController,
        children: <Widget>[
          Text("tes1"),
          Text("tes2"),
          Text("tes3"),
        ],
      ),
    );
  }

  Widget _textBoxDefault(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          // height: 30,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _textBoxCategory(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          // height: 30,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
