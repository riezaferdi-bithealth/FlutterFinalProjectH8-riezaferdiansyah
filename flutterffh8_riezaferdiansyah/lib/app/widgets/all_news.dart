import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/widgets/list_tile_news.dart';

class allNews extends StatelessWidget {
  const allNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.values[3],
            children: const <Widget>[
              Text(
                'All News',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.blue,
                      //height: 3,
                      fontSize: 15,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // Column(
        //   // shrinkWrap: true,
        //   // scrollDirection: Axis.vertical,
        //   children: <Widget>[
        //     ClipRRect(
        //       borderRadius: BorderRadius.circular(7),
        //       child: Container(
        //         height: 150,
        //         color: Colors.white,
        //         padding: const EdgeInsets.all(15),
        //         child: Row(
        //           // crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Image.network(
        //                 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        //             const Column(
        //               children: [
        //                 Text(
        //                   "Ingrid Wijanarko",
        //                   style: TextStyle(
        //                     height: 2,
        //                     fontSize: 17,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //                 Text(
        //                   "\"Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit!\"",
        //                   style: TextStyle(
        //                     fontSize: 15,
        //                     fontWeight: FontWeight.normal,
        //                     overflow: TextOverflow.visible,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //     const SizedBox(
        //       width: 15,
        //     ),
        //     ClipRRect(
        //       borderRadius: BorderRadius.circular(7),
        //       child: Container(
        //         width: 220,
        //         color: Colors.white,
        //         padding: const EdgeInsets.all(15),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Image.network(
        //                 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        //             const Text(
        //               "Rio Matret",
        //               style: TextStyle(
        //                 height: 2,
        //                 fontSize: 17,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             const Text(
        //               "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit!\"",
        //               style: TextStyle(
        //                 fontSize: 15,
        //                 fontWeight: FontWeight.normal,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //     const SizedBox(
        //       width: 15,
        //     ),
        //     ClipRRect(
        //       borderRadius: BorderRadius.circular(7),
        //       child: Container(
        //         width: 220,
        //         color: Colors.white,
        //         padding: const EdgeInsets.all(15),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Image.network(
        //                 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        //             const Text(
        //               "Edho Zell & Mami El",
        //               style: TextStyle(
        //                 height: 2,
        //                 fontSize: 17,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             const Text(
        //               "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit!\"",
        //               style: TextStyle(
        //                 fontSize: 15,
        //                 fontWeight: FontWeight.normal,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //     const SizedBox(
        //       width: 15,
        //     ),
        //   ],
        // ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
