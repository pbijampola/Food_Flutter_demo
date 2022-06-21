// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShopDrid extends StatelessWidget {
  const ShopDrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate:
     SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
     itemCount: 20, 
     itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.deepOrange[200],
        ),
      ); 
     });
  }
}