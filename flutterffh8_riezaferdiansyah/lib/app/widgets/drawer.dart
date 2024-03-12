import 'package:flutter/material.dart';
import 'package:flutterffh8_riezaferdiansyah/app/screen/search_page.dart';
import 'package:flutterffh8_riezaferdiansyah/main.dart';
// import 'main.dart';
// import 'user.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6, //20.0,
      child: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text("NEWS API",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                )),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
              title: Text("Home"),
              onTap: () {
                // // Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => HomePage()));
              }),
          ListTile(
            title: Text("Search"),
            onTap: () {
              // // Navigator.pop(context);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
          ListTile(
            title: Text("Account"),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          // ListTile(
          //   title: Text(user.username),
          //   onTap: () {
          //     Navigator.pop(context);
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => HomePage()));
          //   },
          // ),
        ],
      )),
    );
  }
}
