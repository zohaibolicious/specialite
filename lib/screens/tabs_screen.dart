import 'package:flutter/material.dart';
import 'package:specialite/screens/profile.dart';

import 'home_screen.dart';
import 'profile_screen.dart';
import 'cart_screen.dart';

class TabsScreen extends StatefulWidget {
  static String routeName = '/tabsScreen';

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;

  final tabs = [
    HomeScreen(),
    CartScreen(),
    Profile(),
    ProfileScreen(),
    ProfileScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 27,
          selectedItemColor: Color.fromARGB(255, 239, 67, 37),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                title: Text('Discover'),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                title: Text('Favourites'),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_walk),
                title: Text('Near by'),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text('Me'),
                backgroundColor: Colors.black),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
