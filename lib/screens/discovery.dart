import 'package:flutter/material.dart';
import 'package:specialite/datamodels/user_location.dart';
import 'package:specialite/widgets/s_builder.dart';
import 'package:specialite/widgets/m_builder.dart';
import 'package:specialite/widgets/xl_builder.dart';
import 'package:specialite/widgets/l_builder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart' as constants;

class Discovery extends StatelessWidget {
  const Discovery({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          expandedHeight: 120,
          floating: false,
          pinned: true,
          elevation: 2,
          flexibleSpace: FlexibleSpaceBar(
              titlePadding: constants.PADDING_LTRB,
              title: FutureBuilder(
                future: constants.userLocation,
                builder: (BuildContext context,
                    AsyncSnapshot<UserLocation> snapshot) {
                  if (snapshot.hasData) {
                    return Row(children: [
                      Text('Discover ',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold))),
                      Text(
                        snapshot.data.city,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color.fromARGB(255, 239, 67, 37),
                                fontSize: 19,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]);
                  } else {
                    return Text('Discover ',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold)));
                  }
                },
              )),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    XLBuilder(),
                    Padding(
                      padding: constants.PADDING_LTRB,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Only on Specialite!',
                            style: GoogleFonts.poppins(
                                textStyle: constants.TITLE_STYLE),
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color.fromARGB(255, 239, 67, 37),
                            textColor: Colors.white,
                            onPressed: () => {},
                            child: Text(
                              'See all',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    MBuider(),
                    Padding(
                      padding: constants.PADDING_LTRB,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Specialite Specials!',
                            style: GoogleFonts.poppins(
                                textStyle: constants.TITLE_STYLE),
                          ),
                        ],
                      ),
                    ),
                    LBuilder(),
                    Padding(
                      padding: constants.PADDING_LTRB,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Categories',
                            style: GoogleFonts.poppins(
                                textStyle: constants.TITLE_STYLE),
                          ),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Color.fromARGB(255, 239, 67, 37),
                            textColor: Colors.white,
                            onPressed: () => {},
                            child: Text(
                              'See all',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SBuilder(),
                    Container(
                      padding: constants.PADDING_FOR_QUICKLINKS,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Text('Quick links',
                                style: GoogleFonts.poppins(
                                  textStyle: constants.TITLE_STYLE,
                                )),
                          ),
                          ListTile(
                            leading: Text(
                              'Redeem Code',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
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
                              'Customer Support',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
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
                              'Send a gift',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
