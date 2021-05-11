import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/auth_screen.dart';
import 'screens/phone_screen.dart';
import 'screens/verification_screen.dart';
import 'screens/home_screen.dart';
import 'screens/email_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/restaurant_screen.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Specialite',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: TabsScreen(),
      routes: {
        AuthScreen.routeName: (ctx) => AuthScreen(),
        PhoneScreen.routeName: (ctx) => PhoneScreen(),
        VerificationScreen.routeName: (ctx) => VerificationScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        EmailScreen.routeName: (ctx) => EmailScreen(),
        TabsScreen.routeName: (ctx) => TabsScreen(),
        RestaurantScreen.routeName: (ctx) => RestaurantScreen(),
      },
    );
  }
}
