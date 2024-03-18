import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/app/provider/controller.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
// import 'controller/album_control.dart';
// import './api/posts_service.dart';

class DetailPage extends StatefulWidget {
  // int index;

  DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text("Detail Berita"),
        // title: Consumer<AlbumDetailProvider>(builder: (_, cp, __) {
        //   return Text("Detail Page News: ${cp.selectedAlbum?.id}");
        // }),
        title: Text("Detail News"),

        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: albumBody(),
    );
  }

  Widget albumBody() {
    return Center(
      child: Consumer<ArticlesDetailProvider>(builder: (_, cp, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image(
                image: NetworkImage(cp.selectedArticles?.urlToImage ?? '_'),
                // image: NetworkImage(
                //     "https://images.unsplash.com/photo-1593642532842-98d"),
              ),
            ),
            Text(
              cp.selectedArticles?.title ?? '_',
              // "Lorem ipsum dolor sit amet,",
              style: TextStyle(
                overflow: TextOverflow.clip,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "By ${cp.selectedArticles?.author ?? '_'} on ${cp.selectedArticles?.publishedAt ?? '_'}",
              // "By CNN News on 5 March 2023",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              cp.selectedArticles?.content ?? '_',
              // "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ],
        );
      }),
    );
  }
}
