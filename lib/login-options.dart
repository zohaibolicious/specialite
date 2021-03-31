import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 110.0, 0, 0),
            child: Text(
              "Specialite",
              style: TextStyle(
                  fontFamily: 'Vivaldi',
                  fontSize: 50.0,
                  color: Color(0xffe0b13d),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 0.0),
                  child: Text(
                    ' Signup and Start Ordering',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Text(
                    '\nPlease choose how you want to continue setting up your account.',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Color(0xff93b3d6),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                      height: 50.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(5.0),
                        shadowColor: Color(0xff93b3d6),
                        color: Color(0xff1877f2),
                        elevation: 7.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/sign-up');
                          },
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image(
                                image: AssetImage('assets/Icons/facebook.png'),
                                height: 30.0,
                              ),
                              Text(
                                '      Continue With Facebook',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 20.0,
                                    color: Colors.white),
                              )
                            ],
                          )),
                        ),
                      )),
                  SizedBox(height: 20.0),
                  Container(
                      height: 50.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(5.0),
                        shadowColor: Color(0xffefefef),
                        color: Color(0xffffffff),
                        elevation: 7.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/sign-up');
                          },
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image(
                                image:
                                    AssetImage('assets/Icons/googleicon.png'),
                                height: 25.0,
                              ),
                              Text(
                                '       Continue With Google   ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          )),
                        ),
                      )),
                  SizedBox(height: 20.0),
                  Container(
                      height: 50.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(5.0),
                        shadowColor: Color(0xffedd28f),
                        color: Color(0xffe0b13d),
                        elevation: 7.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/sign-up');
                          },
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              Text(
                                '       Continue With Email      ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20.0,
                                    color: Colors.white),
                              )
                            ],
                          )),
                        ),
                      )),
                  SizedBox(height: 20.0),
                  Container(
                      height: 50.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(5.0),
                        shadowColor: Color(0xfffffaf0),
                        color: Color(0xfffff0c9),
                        elevation: 7.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Continue as Guest',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20.0,
                                    color: Color(0xffe0b13d)),
                              )
                            ],
                          )),
                        ),
                      )),
                  SizedBox(height: 20.0),
                  SizedBox(height: 60.0),
                ],
              )),
        ]));
  }
}
