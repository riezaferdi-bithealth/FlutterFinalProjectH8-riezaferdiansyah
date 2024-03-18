import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/app/provider/controller.dart';
import 'package:flutterffh8_riezaferdiansyah/app/screen/detail_page.dart';
import 'package:flutterffh8_riezaferdiansyah/data/repository/news_api.dart';
import 'package:provider/provider.dart';

class listTileNewsMain extends StatefulWidget {
  String? countryName;
  String? categoryNews;
  String? sourcesNews;
  String? queryNews;
  String? totalNews;

  listTileNewsMain(
    this.countryName,
    this.categoryNews,
    this.sourcesNews,
    this.queryNews,
    this.totalNews,
  );

  @override
  State<listTileNewsMain> createState() => _listTileNewsMainState();
}

class _listTileNewsMainState extends State<listTileNewsMain> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Widget listTileNews() {
    final newsProviders = Provider.of<ArticlesDetailProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: FutureBuilder(
                future: NewsAPI().fetchnewsModel(
                  country: widget.countryName,
                  category: widget.categoryNews,
                  sources: widget.sourcesNews,
                  q: widget.queryNews,
                  pageSize: widget.totalNews,
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
                            if (snapshot.hasData) {
                              newsProviders.selectArticles(
                                snapshot.data![index].articles![index],
                              );
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.grey,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    snapshot.data?[index].articles![index]
                                            .title ??
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
}
