// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodrecipe/util/shop_grid.dart';

class TodayPage extends StatelessWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Food Shop"),
            Row(children: [
                Icon(Icons.today),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(Icons.menu),
                )
              ],),
          ], 
        ),
        
        
      ),
      body: ShopDrid(),
    );
  }
}