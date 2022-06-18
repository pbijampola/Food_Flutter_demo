// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MySquare extends StatefulWidget {
  MySquare({Key? key}) : super(key: key);

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              color: Colors.deepOrange,
            ),
          );
  }
}