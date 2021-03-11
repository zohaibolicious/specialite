import 'package:flutter/material.dart';
import 'package:specialite/widgets/m_builder.dart';
import 'package:specialite/widgets/collapsable_page_header.dart';
import '../constants.dart' as constants;
import '../userdata.dart' as userdata;
import '../widgets/xs_builder.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: CollapsableHeader(
                smallText: 'Profile',
                bigText: 'Howdy ${userdata.firstName}!',
                showIcon: true),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                      color: Colors.white,
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: constants.PADDING_LTRB,
                                    child: Text(
                                      '${userdata.firstName} ${userdata.lastName}',
                                      style: constants.TITLE_STYLE,
                                    ),
                                  ),
                                  Padding(
                                    padding: constants.PADDING_LTRB,
                                    child: Container(
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text('${userdata.orderAmount}+',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold)),
                                              Text('Orders'),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          /* Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(userdata.tokenAmount.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text('Tokens'),
                                    ],
                                  ),*/
                                          SizedBox(
                                            width: 10,
                                          ),
                                          /*Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(userdata.creditsLeft.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text('Credits'),
                                    ],
                                  ),*/
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: constants.PADDING_LTRB,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(userdata.imageUrl),
                                ),
                              )
                            ]),
                        Padding(
                          padding: constants.PADDING_LTRB,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Your favorites',
                                style: constants.TITLE_STYLE,
                              ),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Color.fromARGB(255, 51, 192, 192),
                                textColor: Color.fromARGB(255, 255, 255, 255),
                                onPressed: () => {},
                                child: Text(
                                  'See all',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        MBuider(),
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
                              ListTile(
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
                          padding: constants.PADDING_LTRB,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Order again',
                                style: constants.TITLE_STYLE,
                              ),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Color.fromARGB(255, 51, 192, 192),
                                textColor: Colors.white,
                                onPressed: () => {},
                                child: Text(
                                  'History',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        XSBuilder(howMany: 3),
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
                              SizedBox(
                                height: 100,
                              )
                            ],
                          ),
                        )
                      ]))
                ],
              ))
        ]));
  }
}
