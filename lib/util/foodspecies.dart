// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SpeciesCircle extends StatelessWidget {
  final String text;

  // ignore: prefer_const_constructors_in_immutables
  SpeciesCircle({required this.text});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration:  BoxDecoration(
                      color:  Colors.grey[300],
                      shape: BoxShape.circle),),
                      SizedBox(height: 6),
                      Text(text)
                  ],
                ),
              );
  }
}