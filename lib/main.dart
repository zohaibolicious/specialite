import 'package:flutter/material.dart';
import 'package:specialite/screens/delivery.dart';
import 'package:specialite/screens/discovery.dart';
import 'package:specialite/screens/nearby.dart';
import 'package:specialite/screens/profile.dart';
import 'package:specialite/screens/search.dart';
import 'package:specialite/services/location_service.dart';
import 'package:specialite/services/category_service.dart';
import 'constants.dart' as constants;

void main() {
  print('Application starting');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    constants.userLocation ??= LocationService().pullLocationData();
    constants.categories ??= CategoryService().fetchCategoryObjects();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Specialite',
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child,
        );
      },
      home: Home(),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Discovery(),
    Delivery(),
    Nearby(),
    Search(),
    Profile(),
  ];

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
