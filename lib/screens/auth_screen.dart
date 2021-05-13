import 'package:flutter/material.dart';
import 'package:specialite/screens/tabs_screen.dart';
import 'phone_screen.dart';
import 'email_signin_screen.dart';
import 'email_signup_screen.dart';

class AuthScreen extends StatefulWidget {
  static String routeName = '/auth';

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController emailSignin = TextEditingController();
  TextEditingController pwdSignin = TextEditingController();
  TextEditingController emailSignup = TextEditingController();
  TextEditingController pwdSignup = TextEditingController();
  TextEditingController pwd2Signup = TextEditingController();

  //User user;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   initializeFirebase();
  // }

  void btnSigninPressed() async {
    // String email = emailSignin.text;
    // String password = pwdSignin.text;
    // UserCredential userCredential =
    //     await signInWithEmail(email, password, context);
    // if (userCredential != null) {
    //   user = userCredential.user;
    // }
  }

  void btnSignupPressed() async {
    // String email = emailSignup.text;
    // String password = pwdSignup.text;
    // UserCredential userCredential = await signUpWithEmail(email, password, context);
    // if (userCredential != null) {
    //   user = userCredential.user;

    //   Navigator.of(context).pushNamed(PhoneScreen.routeName);
    // }
    Navigator.of(context).pushNamed(PhoneScreen.routeName);
  }

  void btnGooglePressed() async {
    // UserCredential userCredential = await signInWithGoogle();
    // if (userCredential != null) {
    //   user = userCredential.user;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 80.0, 0, 0),
            child: Text(
              "Specialite",
              style: TextStyle(
                  fontFamily: 'AlexBrush',
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
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(22.0, 0, 30.0, 0),
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
                        elevation: 4.0,
                        child: InkWell(
                          onTap: () {
                            //Navigator.pushNamed(context, '/sign-up');
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
                        color: Colors.red[10],
                        elevation: 4.0,
                        child: InkWell(
                          onTap: () {
                            //Navigator.pushNamed(context, '/sign-up');
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
                                  color: Colors.black38,
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
                        color: Colors.green[200],
                        elevation: 3.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(EmailSignUpScreen.routeName);
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
                        color: Colors.amber[300],
                        elevation: 4.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(TabsScreen.routeName);
                          },
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              Text('        Continue As A Guest      ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ))
                            ],
                          )),
                        ),
                      )),
                ],
              )),
        ]));
  }
}
