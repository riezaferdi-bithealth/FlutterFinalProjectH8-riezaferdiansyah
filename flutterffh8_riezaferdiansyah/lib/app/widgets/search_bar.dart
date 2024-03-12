import 'package:flutter/material.dart';

class SearchTopBar extends StatefulWidget {
  const SearchTopBar({super.key});

  @override
  State<SearchTopBar> createState() => _SearchTopBarState();
}

class _SearchTopBarState extends State<SearchTopBar> {
  String query = '';
  TextEditingController _searchController = TextEditingController();

  void onQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0, left: 16.0, right: 16.0),
      child: Form(
        child: TextFormField(
          // validator: _validatorForm,
          onChanged: onQueryChanged,
          controller: _searchController,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            //fillColor: systemAccent20Color,
            //hoverColor: systemWhiteColor,
            // prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.search),
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(6)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(6)),
            hintStyle: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            hintText: "Search",
            isDense: true,
            // contentPadding: ,
            // errorText: "Value Can't Be Empty",
          ),
        ),
      ),
    );
  }
}
