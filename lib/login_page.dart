// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_equal_for_default_values, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:foodrecipe/main_page.dart';
import 'package:foodrecipe/register_page.dart';

 class LoginPage extends StatefulWidget {
   LoginPage({Key? key}) : super(key: key);
 
   @override
   State<LoginPage> createState() => _LoginPageState();
 }
 
 class _LoginPageState extends State<LoginPage> 
 {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              Text("Hello, It's Fast Food",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),),

                //image or icon for now
              SizedBox(height: 20),
              Icon(Icons.restaurant_menu_rounded,
              size: 100,
              color: Colors.deepOrange,),
                //simple text
                Text("Keep Calm and Enjoy the City Food",
                style: TextStyle(
                  fontSize: 18
                ),),
                SizedBox(height: 20),
                //Email text field

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,
                  border: Border.all(color: Colors.white,),
                  borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border:InputBorder.none,
                        hintText: ("Email")),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
                //password text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white,
                  border: Border.all(color:Colors.white),
                  borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ("Password"),
                      ),),
                  ),
                ),
              ),
              SizedBox(height: 20),
                // sign button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(color: Colors.deepOrange,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: GestureDetector(
                      // onTap:
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => MainPage()));
                        },
                        child: Text("Sign In",
                        style: TextStyle(color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
                // register for an account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have account!",
                    style: TextStyle(fontSize: 13,),),
                    GestureDetector(
                      child: Text(" Register Here",
                      style: TextStyle(fontSize: 13,
                      color:Colors.deepOrange),),
                       onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:( BuildContext context)=>RegisterPage()));
                      },
                    )
                  ],
                )
            ],
          ),
        )),
     );
   }
   
     
 }