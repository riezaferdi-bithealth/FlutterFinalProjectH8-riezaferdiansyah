import 'package:flutterffh8_riezaferdiansyah/app/utilities/enums/channel.dart';
import 'package:flutter/material.dart';

class topBarChannel extends StatefulWidget {
  const topBarChannel({super.key});

  @override
  State<topBarChannel> createState() => _topBarChannelState();
}

class _topBarChannelState extends State<topBarChannel>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  _handleTabSelection() {
    setState(() {});
  }

  @override
  void initState() {
    _tabController = TabController(length: 9, vsync: this);
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
          text: Channel.bbcNews.name,
        ),
        Tab(
          text: Channel.timesIndia.name,
        ),
        Tab(
          text: Channel.politico.name,
        ),
        Tab(
          text: Channel.washingtonPost.name,
        ),
        Tab(
          text: Channel.reuters.name,
        ),
        Tab(
          text: Channel.cnn.name,
        ),
        Tab(
          text: Channel.nbcNews.name,
        ),
        Tab(
          text: Channel.hills.name,
        ),
        Tab(
          text: Channel.foxNews.name,
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
