// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:foodrecipe/util/explore_grid.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(Icons.search,
                color: Colors.black,),
                Container(
                  child: Text("Search",
                  style: TextStyle(color: Colors.black))),
              ],
            ),
          ),
        ),
      ),
      body: ExploreGrid(),
      );
  }
}