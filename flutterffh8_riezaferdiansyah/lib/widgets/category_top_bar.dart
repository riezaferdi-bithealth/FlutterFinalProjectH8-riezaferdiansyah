import 'package:flutterffh8_riezaferdiansyah/utilities/enums/category.dart';
import 'package:flutter/material.dart';

class topBarCategory extends StatelessWidget {
  const topBarCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView(
        padding: const EdgeInsets.only(bottom: 16),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(width: 16,),
          // _textBoxDefault(Category.all.name),
          _textBoxDefault(Category.general.name),
          _textBoxCategory(Category.science.name),
          _textBoxCategory(Category.business.name),
          _textBoxCategory(Category.technology.name),
          _textBoxCategory(Category.sports.name),
          _textBoxCategory(Category.health.name),
          _textBoxCategory(Category.entertainment.name),
          SizedBox(width: 16,),
        ],
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
