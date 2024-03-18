import 'package:flutterffh8_riezaferdiansyah/app/utilities/enums/country.dart';
import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/data/repository/news_api.dart';

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
    return SingleChildScrollView(
      child: SizedBox(
        height: 500,
        child: Scaffold(
          appBar: AppBar(
            bottom: tabTopBarView(),
          ),
          body: tabBarContentSection(),
        ),
      ),
    );
  }

  PreferredSizeWidget tabTopBarView() {
    return TabBar(
      controller: _tabController,
      indicatorColor: Colors.grey,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      isScrollable: true,
      tabs: [
        Tab(
          text: Country.india.name,
          // child: test(),
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
    return TabBarView(
      physics: BouncingScrollPhysics(),
      controller: _tabController,
      children: <Widget>[
        listTileNews(
          Country.india.countryCode,
          "",
          "",
          "",
          "2",
        ),
        Text("tes2"),
        Text("tes3"),
        Text("tes1"),
        Text("tes2"),
        Text("tes3"),
        Text("tes1"),
        // Text("tes2"),
        // Text("tes3"),
      ],
    );
  }

  Widget listTileNews(
    String countryName,
    String categoryNews,
    String sourcesNews,
    String queryNews,
    String totalNews,
  ) {
    // final albumProviders = Provider.of<AlbumDetailProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: FutureBuilder(
                future: NewsAPI().fetchnewsModel(
                  country: countryName,
                  category: categoryNews,
                  sources: sourcesNews,
                  q: queryNews,
                  pageSize: totalNews,
                ),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    //print(snapshot.data?.length);
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // if (snapshot.hasData) {
                            //   albumProviders.selectAlbum(
                            //     snapshot.data![index],
                            //   );
                            // }
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const DetailPage(),
                            //   ),
                            // );
                          },
                          child: Container(
                            color: Colors.grey,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    snapshot.data?[index].articles![index].title ??
                                        '_',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                    maxLines: 2,
                                  ),
                                  subtitle: Text(
                                    "Source: ${snapshot.data?[index].articles![index].source ?? '_'}",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  leading: Container(
                                    width: 70,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                          snapshot.data?[index].articles![index]
                                                  .urlToImage ??
                                              'https://istow.id/wp-content/themes/trix/assets/images/no-image/No-Image-Found-400x264.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  trailing: Text(
                                    "${snapshot.data?[index].articles![index].author ?? '_'}",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return const Text("Snapshot Error");
                  }
                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                },
              ),
            )
          ],
        ),
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
