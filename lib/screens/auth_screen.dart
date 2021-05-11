import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:specialite/widgets/my_back_button.dart';
import 'package:specialite/widgets/pill_button.dart';

import '../data.dart';
import 'phone_screen.dart';
import 'email_screen.dart';

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
    var size = MediaQuery.of(context).size;
    var statusHeight = MediaQuery.of(context).padding.top;
    var screenHeight = size.height;
    var screenWidth = size.width;

    return Container(
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          body: Container(
            height: screenHeight - statusHeight,
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myBackButton(),
                    SizedBox(height: 10),
                    Text(
                      "Specialite",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Signup and Start Ordering",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Please choose how you want to continue setting up your account",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                )),
                Column(
                  children: [
                    FacebookAuthButton(
                      onPressed: () {},
                      text: "Continue with Facebook",
                      style: AuthButtonStyle(
                        width: double.infinity,
                        height: 55,
                      ),
                    ),
                    SizedBox(height: 12),
                    GoogleAuthButton(
                      onPressed: () {},
                      text: "Continue with Google",
                      style: AuthButtonStyle(
                        width: double.infinity,
                        height: 55,
                      ),
                    ),
                    SizedBox(height: 12),
                    EmailAuthButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(EmailScreen.routeName);
                      },
                      text: "Continue with Email",
                      style: AuthButtonStyle(
                        width: double.infinity,
                        height: 55,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text("Already a user?"),
                    SizedBox(height: 15),
                    PillButton(
                      onPressed: () {},
                      buttonText: "Login",
                      width: double.infinity,
                      color: Colors.red[400],
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // child: Container(
          //   padding: const EdgeInsets.all(25.0),
          //   child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         SizedBox(
          //           height: 340,
          //           child: DefaultTabController(
          //             length: 2,
          //             child: Column(
          //               children: [
          //                 Container(
          //                   width: 250,
          //                   child: TabBar(
          //                     unselectedLabelColor: amberColor,
          //                     indicatorSize: TabBarIndicatorSize.tab,
          //                     indicator: BoxDecoration(
          //                       color: amberColor,
          //                       borderRadius: BorderRadius.circular(50),
          //                     ),
          //                     tabs: [
          //                       Tab(
          //                         child: Align(
          //                           alignment: Alignment.center,
          //                           child: Text(
          //                             "Sign In",
          //                             style: TextStyle(
          //                               fontSize: 18,
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                       Tab(
          //                         child: Align(
          //                           alignment: Alignment.center,
          //                           child: Text(
          //                             "Register",
          //                             style: TextStyle(
          //                               fontSize: 18,
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //                 Flexible(
          //                   child: Padding(
          //                     padding: const EdgeInsets.all(8.0),
          //                     child: TabBarView(children: [
          //                       Form(
          //                         child: Column(
          //                           children: [
          //                             Padding(
          //                               padding: EdgeInsets.all(8.0),
          //                               child: TextFormField(
          //                                 controller: emailSignin,
          //                                 decoration: const InputDecoration(
          //                                     hintText: "Email Address"),
          //                               ),
          //                             ),
          //                             Padding(
          //                               padding: EdgeInsets.all(8.0),
          //                               child: TextFormField(
          //                                 controller: pwdSignin,
          //                                 decoration: InputDecoration(
          //                                     hintText: "Password"),
          //                                 obscureText: true,
          //                               ),
          //                             ),
          //                             Container(
          //                               height: 20,
          //                             ),
          //                             Padding(
          //                               padding: EdgeInsets.all(8.0),
          //                               child: PillButton(
          //                                 onPressed: () => btnSigninPressed(),
          //                                 buttonText: "Sign In",
          //                               ),
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                       Form(
          //                         child: Column(
          //                           children: [
          //                             Padding(
          //                               padding: EdgeInsets.all(8.0),
          //                               child: TextFormField(
          //                                 controller: emailSignup,
          //                                 decoration: const InputDecoration(
          //                                     hintText: "Email Address"),
          //                               ),
          //                             ),
          //                             Padding(
          //                               padding: EdgeInsets.all(8.0),
          //                               child: TextFormField(
          //                                 controller: pwdSignup,
          //                                 decoration: InputDecoration(
          //                                     hintText: "Password"),
          //                                 obscureText: true,
          //                               ),
          //                             ),
          //                             Padding(
          //                               padding: EdgeInsets.all(8.0),
          //                               child: TextFormField(
          //                                 controller: pwd2Signup,
          //                                 decoration: InputDecoration(
          //                                     hintText: "Confirm Password"),
          //                                 obscureText: true,
          //                               ),
          //                             ),
          //                             Container(
          //                               height: 20,
          //                             ),
          //                             Padding(
          //                               padding: EdgeInsets.all(8.0),
          //                               child: PillButton(
          //                                 onPressed: () => btnSignupPressed(),
          //                                 buttonText: "Register",
          //                               ),
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                     ]),
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //         Divider(),
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Text("or login with"),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Row(
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: GoogleAuthButton(
          //                   onPressed: () => btnGooglePressed(),
          //                   style: AuthButtonStyle(
          //                       buttonType: AuthButtonType.icon),
          //                 ),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: FacebookAuthButton(
          //                   onPressed: () => {},
          //                   style: AuthButtonStyle(
          //                       buttonType: AuthButtonType.icon),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ]),
          // ),
        ),
      ),
    );
  }
}
