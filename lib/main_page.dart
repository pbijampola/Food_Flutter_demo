import 'package:flutter/material.dart';
import 'package:foodrecipe/mysquare.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _SelectedIndex=0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text("HOME"),
    Text("SEARCH"),
    Text("PROFILE"),
    Text("TODAY"),
    Text("KITCHEN")
  ];

  void _onItemTapped(int index){
    setState(() {
      _SelectedIndex = index;
    });
  }

//list of items
final List _foodrecipes= [
"ugali",
"kachumbari",
'maharage',
'machungwa',
'Makande'

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Fast Food'),
      ),

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