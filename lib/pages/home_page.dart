// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:foodrecipe/util/foodspecies.dart';
import 'package:foodrecipe/util/user_post.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  // List of Species Available
  static const List _specielist=[
    "specie 1",
    "specie 2",
    "specie 3",
    "specie 4",
    "specie 5",
    "specie 6",
    "specie 7",
    "specie 8",
    "specie 9",
    "specie 10",
  ];
  static const List _restaurant=[
    "Res 1","Res 5",
    "Res2 2","Res 6",
    "Res 3","Res 7",
    "Res 4","Res 9",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Fast Food"),
            Row(
              children: [
                Icon(Icons.favorite),
                Padding(
                  padding: const EdgeInsets.all(28),
                  child: Icon(Icons.share),
                ),
                Icon(Icons.settings),
              ],
            ),
           
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _specielist.length,
              itemBuilder: (context,index){
              return SpeciesCircle(text: _specielist[index]);
            })
          ),
          //posts
          //UserPost(data: "Food1",),

          Expanded(
            child: ListView.builder(
              itemCount: _restaurant.length,
              itemBuilder: (context, index) {
              return UserPost(data: _restaurant[index]);
            }),
          )
         
        ],
      )
    );
  }
}