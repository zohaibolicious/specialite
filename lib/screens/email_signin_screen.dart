import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:specialite/services/auth.dart';
import '../widgets/pill_button.dart';
import '../widgets/my_back_button.dart';
import 'email_signup_screen.dart';

class EmailSignInScreen extends StatefulWidget {
  static String routeName = "/email_sign_in";

  @override
  _EmailSignInScreenState createState() => _EmailSignInScreenState();
}

class _EmailSignInScreenState extends State<EmailSignInScreen> {
  final AuthService _auth = AuthService();

  //text field states
  String email = "";
  String password = "";

  void signIn() async {
    dynamic result = await _auth.signInEmail();
    if (result == null) {
      print("Error Signed In");
    } else {
      print("Signed Inn");
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var statusHeight = MediaQuery.of(context).padding.top;
    var screenHeight = size.height;
    var screenWidth = size.width;

    return Container(
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          body: Container(
            // alignment: Alignment.center,
            height: screenHeight - statusHeight,
            padding: EdgeInsets.all(20.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: myBackButton(),
                        ),
                        SizedBox(height: 15),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            " Sign in with Email",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  labelStyle: TextStyle(color: Colors.grey),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                      color: Colors.amber,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    password = value;
                                  });
                                },
                                obscureText: true,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(color: Colors.grey),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                      color: Colors.amber,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              PillButton(
                                onPressed: () async {
                                  signIn();
                                },
                                //Navigator.of(context).pushNamed(PhoneScreen.routeName),
                                buttonText: "Sign in",
                                width: double.infinity,
                                color: Colors.amber,
                                textColor: Colors.white,
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                onTap: () => Navigator.of(context)
                                    .pushReplacementNamed(
                                        EmailSignUpScreen.routeName),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "  CREATE A NEW ACCOUNT ?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Colors.amber[800]),
                                  ),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
