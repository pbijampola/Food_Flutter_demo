// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:foodrecipe/pages/home_page.dart';
import 'package:foodrecipe/pages/kitchen_page.dart';
import 'package:foodrecipe/pages/profile_page.dart';
import 'package:foodrecipe/pages/search_page.dart';
import 'package:foodrecipe/pages/today_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // navigate around the bottom naviagation
  int _SelectedIndex=0;

    //Different pages to naviagate
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    ProfilePage(),
    TodayPage(),
    KitchenPage(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _SelectedIndex = index;
    });
  }

//list of items
// final List _foodrecipes= [
// "ugali",
// "kachumbari",
// 'maharage',
// 'machungwa',
// 'Makande'

// ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepOrange,
      //   title: Text('Fast Food'),
      // ),

      bottomNavigationBar: 
      BottomNavigationBar(  
        onTap: _onItemTapped,
        currentIndex: _SelectedIndex,
        type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home),
      label:'HOME'),
      BottomNavigationBarItem(icon: Icon(Icons.search),
      label: "SEARCH"),
      BottomNavigationBarItem(icon: Icon(Icons.person),
      label: "PROFILE"),
      BottomNavigationBarItem(icon: Icon(Icons.today),
      label: "TODAY"),
      BottomNavigationBarItem(icon: Icon(Icons.kitchen),
      label: 'KITCHEN')
       ]),


      body: Center(
        child: _widgetOptions.elementAt(_SelectedIndex),
      )
     
      //  ListView.builder(
      //   itemCount: _foodrecipes.length,
      //   itemBuilder: (context, index) {
      //   return  MySquare();
      // },
      // ),
    );
  }
}