// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //profile picure
                Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300]
                    ),
                  ),
                //Number of post
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("10",
                          style: TextStyle(
                            fontSize: 15,
                          fontWeight: FontWeight.bold),),
                          Text("Posts")
                        ],
                      ),
                
                      //Number of Followers 
                              Column(
                      children: [
                        Text("270",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text("Followers")
                      ],
                              ),
                      //Number of following
                              Column(
                      children: [
                        Text("3370",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text("Following")
                      ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //Name and Bio
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Res 1",
                style: TextStyle(fontWeight: FontWeight.bold),),
                Text("WE PROVIDE FAVOURABLE FOODs IN TOWN"),
                Text("www.res1.co.tz",
                style: TextStyle(color: Colors.blue),),
              ],
            ),
          ),
          //edit profile
         Row(
           children: [
             Expanded(
               child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(2)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(child: Text("Edit Profile")),
                    )),
             ),
           ],
         ),
        ],
        
      ),
    );
  }
}