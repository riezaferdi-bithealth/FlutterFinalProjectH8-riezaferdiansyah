import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'controller/album_control.dart';
// import './api/posts_service.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

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
      body: const AlbumBody(),
    );
  }
}

class AlbumBody extends StatelessWidget {
  const AlbumBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        // child: Consumer<NewsProvider>(builder: (_, cp, __) {
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(0),
          child: const Image(
            // image: NetworkImage(cp.selectedNews?.urlToImage ?? '_'),
            image: NetworkImage(
                "https://images.unsplash.com/photo-1593642532842-98d"),
          ),
        ),
        const Text(
          // cp.selectedNews?.title ?? '_',
          "Lorem ipsum dolor sit amet,",
          style: TextStyle(
            overflow: TextOverflow.clip,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          // "By ${cp.selectedNews?.author ?? '_'} on ${cp.selectedNews?.publishedAt ?? '_'}",
          "By CNN News on 5 March 2023",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          // cp.selectedNews?.content ?? '_',
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis",
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    ));
    // }),
    // );
  }
}
