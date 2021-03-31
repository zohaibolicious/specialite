import 'package:flutter/material.dart';

class SignupPage2 extends StatefulWidget {
  SignupPage2({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SignupPage2State createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 80, 0, 0),
                child: Material(
                  color: Colors.white,
                  child: Container(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xffdddddd),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(15.0, 30.0, 0.0, 0.0),
                      child: Text(
                        ' Signup',
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text(
                        '\n    Enter Email Address',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'NICK NAME ',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xfff05337)))),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                          height: 50.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(5.0),
                            shadowColor: Color(0xffff9eb1),
                            color: Color(0xffdb0035),
                            elevation: 7.0,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/sign-up3');
                              },
                              child: Center(
                                child: Text(
                                  'NEXT',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(height: 20.0),
                    ],
                  )),
              // SizedBox(height: 15.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Text(
              //       'New to Spotify?',
              //       style: TextStyle(
              //         fontFamily: 'Montserrat',
              //       ),
              //     ),
              //     SizedBox(width: 5.0),
              //     InkWell(
              //       child: Text('Register',
              //           style: TextStyle(
              //               color: Colors.deepOrange,
              //               fontFamily: 'Montserrat',
              //               fontWeight: FontWeight.bold,
              //               decoration: TextDecoration.Outline)),
              //     )
              //   ],
              // )
            ]));
  }
}