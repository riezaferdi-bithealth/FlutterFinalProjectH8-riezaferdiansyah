import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final selectedIndex;
  final ValueChanged<int> onClicked;
  BottomBar({this.selectedIndex, required this.onClicked});

  // int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // currentIndex: index,
      // onTap: (value) {
      //   print(value);
      //   setState(() {
      //     index = value;
      //   });
      // },
      currentIndex: selectedIndex,
      onTap: onClicked,
      selectedItemColor: Colors.blue,
      // backgroundColor: Colors.blue,
      unselectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Category',
          icon: Icon(Icons.category),
        ),
        BottomNavigationBarItem(
          label: 'Country',
          icon: Icon(Icons.flag),
        ),
        BottomNavigationBarItem(
          label: 'Channel',
          icon: Icon(Icons.tv),
        ),
      ],
    );
  }
}
