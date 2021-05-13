import 'package:flutter/material.dart';
import 'package:specialite/services/auth.dart';
import '../constants.dart' as constants;
import '../userdata.dart' as userdata;

class ProfileScreen extends StatefulWidget {
  static String routeName = '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = true;
  String language = "English";

  final AuthService _auth = AuthService();

  Future signOut() async {
    await _auth.signOut();
  }

  void toggleSwitch(bool value) {
    if (!isSwitched) {
      setState(() {
        isSwitched = true;
        language = "English";
      });
    } else {
      setState(() {
        isSwitched = false;
        language = "Japanese";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildListDelegate(
        [
          Container(
              color: Colors.white,
              child: Column(children: [
                SizedBox(height: 35),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Howdy Michael!',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Container(
                          height: 70,
                          width: 70,
                          child: Image(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Michael S.",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("5 Orders"),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: constants.PADDING_FOR_QUICKLINKS,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          'Quick links',
                          style: constants.TITLE_STYLE,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(11.0, 0, 0, 0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          // onTap: () {},
                          child: Container(
                            height: 50,
                            child: Row(
                              children: [
                                SizedBox(width: 5),
                                Expanded(
                                  child: Text(
                                    language,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Switch(
                                  onChanged: toggleSwitch,
                                  value: isSwitched,
                                  activeColor: Colors.white,
                                  activeTrackColor: Colors.red[400],
                                  inactiveThumbColor: Colors.white,
                                  inactiveTrackColor: Colors.red[400],
                                  // inactiveTrackColor: Colors.white10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        indent: 15,
                        height: 1,
                        color: Colors.grey[350],
                      ),
                      ListTile(
                        leading: Text(
                          'Enter promo code',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.navigate_next),
                        onTap: () => {},
                        dense: true,
                      ),
                      Divider(
                        indent: 15,
                        height: 1,
                        color: Colors.grey[350],
                      ),
                      /*ListTile(
                        leading: Text(
                          'English',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.compare_arrows),
                        onTap: () => {},
                        dense: true,
                      ),
                      Divider(
                        indent: 15,
                        height: 1,
                        color: Colors.grey[350],
                      ),*/
                      ListTile(
                        leading: Text(
                          'Order history',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.navigate_next),
                        onTap: () => {},
                        dense: true,
                      ),
                      Divider(
                        indent: 15,
                        height: 1,
                        color: Colors.grey[350],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: constants.PADDING_FOR_QUICKLINKS,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          'Settings',
                          style: constants.TITLE_STYLE,
                        ),
                      ),
                      /* ListTile(
                        leading: Text(
                          'Credits and Tokens',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.navigate_next),
                        onTap: () => {},
                        dense: true,
                      ),
                      Divider(
                        indent: 15,
                        height: 1,
                        color: Colors.grey[350],
                      ),*/
                      ListTile(
                        leading: Text(
                          'Payment Methods',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.navigate_next),
                        onTap: () => {},
                        dense: true,
                      ),
                      Divider(
                        indent: 15,
                        height: 1,
                        color: Colors.grey[350],
                      ),
                      ListTile(
                        leading: Text(
                          'My Addresses',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.navigate_next),
                        onTap: () => {},
                        dense: true,
                      ),
                      Divider(
                        indent: 15,
                        height: 1,
                        color: Colors.grey[350],
                      ),
                      ListTile(
                        leading: Text(
                          'More Settings',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.navigate_next),
                        onTap: () => {},
                        dense: true,
                      ),
                      Divider(
                        indent: 15,
                        height: 1,
                        color: Colors.grey[350],
                      ),
                      ListTile(
                        leading: Text(
                          'Sign Out',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.navigate_next),
                        onTap: () {
                          signOut();
                        },
                        dense: true,
                      ),
                      Divider(
                        indent: 15,
                        height: 1,
                        color: Colors.grey[350],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ]))
        ],
      ))
    ]));
  }
}
