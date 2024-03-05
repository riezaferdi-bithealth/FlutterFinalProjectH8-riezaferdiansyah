import 'package:flutter/material.dart';

class listTileNews extends StatelessWidget {
  const listTileNews({super.key});

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   // itemCount: snapshot.data?.length ?? 0,
    //   scrollDirection: Axis.vertical,
    //   itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // if (snapshot.hasData) {
            //   newsProviders.selectNews(
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
          child: ListTile(
            title: Text(
              // snapshot.data?[index].title! ?? '_',
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit!",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              maxLines: 2,
            ),
            subtitle: Text(
              // "By ${snapshot.data?[index].author! ?? '_'} on ${snapshot.data?[index].publishedAt! ?? '_'}",
              "Rio Matret",
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
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
                    // snapshot.data?[index].urlToImage! ?? '_',
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  ),
                ),
              ),
            ),
          ),
        );
    //   },
    // );
  }
}
