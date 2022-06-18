// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodrecipe/login_page.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   title: Text("Register Page"),
      // ),
      body: SafeArea(child: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25),
            Text("Hello! Again",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold),),
              SizedBox(height: 20),
              // icon or image
              Icon(Icons.restaurant_menu_rounded,
              size: 100,
              color: Colors.deepOrange,),

              SizedBox(height: 20),
              // Text for registration
            Text("Register Below to Fast Food",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
              //Email Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration( color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12) ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Emali",
                  )),
                ),
              ),
            ),

            SizedBox(height: 20,),
              //Password Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password"
                  ),),
                ),
              ),
            ),
            SizedBox(height: 20),
              //Confirm Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Confirm Password",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
              //Sign up button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(color: Colors.deepOrange,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                    },
                    child: Text("SIGN UP",
                    style: TextStyle(color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
                    ),
                  )),
              ),
            ) , 

            SizedBox(height: 20),
              //Already have an account login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have an Account",
                  style: TextStyle(fontSize: 15),),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                    },
                    child: Text("  Login Here",
                    style: TextStyle(color: Colors.deepOrange,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),),
                  )
                ],
              )
          ],
        ),
      )),
    );
  }
}