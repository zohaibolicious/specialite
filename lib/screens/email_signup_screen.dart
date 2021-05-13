import 'package:flutter/material.dart';
import 'package:specialite/services/auth.dart';
import 'package:specialite/widgets/my_back_button.dart';
import 'package:specialite/widgets/pill_button.dart';
import 'email_signin_screen.dart';

class EmailSignUpScreen extends StatefulWidget {
  static String routeName = "/email_sign_up";
  @override
  _EmailSignUpScreenState createState() => _EmailSignUpScreenState();
}

class _EmailSignUpScreenState extends State<EmailSignUpScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //text field states
  String name = "";
  String email = "";
  String password = "";
  String cpassword = "";
  String error = '';

  void signUp() async {
    dynamic result = await _auth.signUpEmail(email, password);
    if (result == null) {
      setState(() {
        error = 'Invalid email address';
      });
      print("Error signing up");
    } else {
      print("Signed Up");
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
                        SizedBox(height: 25),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            " Register with your Email",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (val) =>
                                    val.isEmpty ? 'Please Enter Name' : null,
                                onChanged: (value) {
                                  setState(() {
                                    name = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  labelText: "Full Name",
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
                                validator: (val) =>
                                    val.isEmpty ? 'Please Enter Email' : null,
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  labelText: "Email Address",
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
                                validator: (val) => val.length < 6
                                    ? 'Password must be atleast 6 characters'
                                    : null,
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
                              TextFormField(
                                validator: (value) {
                                  if (value.length < 6)
                                    return 'Password must be atleast 6 characters';
                                  else if (password != cpassword)
                                    return 'Passwords must match';
                                  else
                                    return null;
                                },
                                onChanged: (value) {
                                  setState(() {
                                    cpassword = value;
                                  });
                                },
                                obscureText: true,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
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
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    signUp();
                                  }
                                },
                                //Navigator.of(context).pushNamed(PhoneScreen.routeName),
                                buttonText: "Register",
                                width: double.infinity,
                                color: Colors.amber,
                                textColor: Colors.white,
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                onTap: () => Navigator.of(context)
                                    .pushReplacementNamed(
                                        EmailSignInScreen.routeName),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "  ALREADY HAVE AN ACCOUNT ?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
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
