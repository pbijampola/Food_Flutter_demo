// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {

  final String data;
  UserPost({required this.data});

  @override
  Widget build(BuildContext context) {
    return
     Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(color: Colors.grey[300],
                    shape: BoxShape.circle),
                  ),
                  SizedBox(width: 12),
                  Text(data,
                  style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
               Icon(Icons.more_horiz)
            ],
          ),
        ),
        //post
        Container(
                height: 250,
                color: Colors.black,
              ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Row(
          children: [
            Icon(Icons.favorite),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Icon(Icons.comment),
            ),
            Icon(Icons.share),
          ],
        ),
        Icon(Icons.bookmark)
    ],),
      ),

      //liked by 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text("liked by"),
            Text("Musa_kipanya",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(" and 2,330 others"),
          ],
        ),
        
      ),

      //caption 
      Padding(
        padding: const EdgeInsets.only(left:8.0),
         child: RichText(text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: "Food1",style:
                TextStyle(fontWeight: FontWeight.bold)
                ),
                TextSpan(text: "Most lovable food by 2022 prepared by Mashka food restaurant...more")
              ]
            ),)
      )
      ],
    );
    // below the post comment and share icons
    

  }
}