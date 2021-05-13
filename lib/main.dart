import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:specialite/models/user.dart';
import 'package:specialite/screens/wrapper.dart';
import 'package:specialite/services/auth.dart';

import 'screens/auth_screen.dart';
import 'screens/phone_screen.dart';
import 'screens/verification_screen.dart';
import 'screens/home_screen.dart';
import 'screens/email_signin_screen.dart';
import 'screens/email_signup_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        title: 'Specialite',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: Wrapper(),
        routes: {
          AuthScreen.routeName: (ctx) => AuthScreen(),
          PhoneScreen.routeName: (ctx) => PhoneScreen(),
          VerificationScreen.routeName: (ctx) => VerificationScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(),
          EmailSignInScreen.routeName: (ctx) => EmailSignInScreen(),
          EmailSignUpScreen.routeName: (ctx) => EmailSignUpScreen(),
          TabsScreen.routeName: (ctx) => TabsScreen(),
          RestaurantScreen.routeName: (ctx) => RestaurantScreen(),
        },
      ),
    );
  }
}
