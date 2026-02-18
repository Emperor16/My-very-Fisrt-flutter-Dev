import 'package:firstapp/pages/settings_page.dart';
import 'package:firstapp/pages/profile_page.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  FirstPage({super.key});


  // this keeps track of the current  page index
  int _selectedIndex = 0;


// this method updates the new selected index
  void navigateBottomBar(int index) {
    _selectedIndex = index;
  }


  final List _pages = [
    //Homepage
    HomePage(),

    //Profilepage
    ProfilePage(),

    //SettingsPage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          //profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
