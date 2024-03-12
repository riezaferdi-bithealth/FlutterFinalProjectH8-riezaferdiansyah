import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/app/screen/search_page.dart';

class TopBar extends StatelessWidget {
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      // key: _scaffoldKey,
      padding: EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(Icons.menu, size: 30),
          ),
          // SizedBox(width: 16.0),
          Text('NEWS API', style: TextStyle(fontSize: 22)),
          // SizedBox(width: 16.0),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                child: Icon(Icons.search, size: 30),
              ),
              SizedBox(width: 8.0),
              Icon(Icons.account_circle, size: 30)
            ],
          )
        ],
      ),
    );
  }
}
