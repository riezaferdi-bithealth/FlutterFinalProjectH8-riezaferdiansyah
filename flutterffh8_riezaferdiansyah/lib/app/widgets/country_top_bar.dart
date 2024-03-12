import 'package:flutterffh8_riezaferdiansyah/app/utilities/enums/country.dart';
import 'package:flutter/material.dart';

class topBarCountry extends StatefulWidget {
  const topBarCountry({super.key});

  @override
  State<topBarCountry> createState() => _topBarCountryState();
}

class _topBarCountryState extends State<topBarCountry>
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

  Widget tabTopBarView() {
    return TabBar(
      controller: _tabController,
      indicatorColor: Colors.grey,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      isScrollable: true,
      tabs: [
        Tab(
          text: Country.india.name,
        ),
        Tab(
          text: Country.usa.name,
        ),
        Tab(
          text: Country.mexico.name,
        ),
        Tab(
          text: Country.uae.name,
        ),
        Tab(
          text: Country.nz.name,
        ),
        Tab(
          text: Country.israel.name,
        ),
        Tab(
          text: Country.indonesia.name,
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
