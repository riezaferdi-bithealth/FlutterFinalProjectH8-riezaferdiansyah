import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.menu, size: 30),
          ),
          // SizedBox(width: 16.0),
          Text('NEWS API', style: TextStyle(fontSize: 22)),
          // SizedBox(width: 16.0),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
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
