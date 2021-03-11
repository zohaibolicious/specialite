import 'package:flutter/material.dart';
import 'package:specialite/datamodels/user_location.dart';
import 'package:specialite/services/location_service.dart';
import 'package:specialite/widgets/collapsable_page_header.dart';
import 'package:specialite/widgets/xxl_builder.dart';
import '../constants.dart' as constants;
import 'package:google_fonts/google_fonts.dart';

class Delivery extends StatelessWidget {
  const Delivery({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  floating: false,
                  delegate: CollapsableHeader(
                      smallText: 'Favourites', bigText: 'Favourites'),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(color: Colors.white, child: XXLBuilder()),
                    ],
                  ),
                )
              ],
            ),
          ),
          bottomSheet: Container(
            color: Color.fromARGB(255, 51, 192, 192),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
                size: 17,
              ),
              //TODO space between icon and title should be smaller
              title: FutureBuilder(
                future: constants.userLocation ??=
                    LocationService().pullLocationData(),
                builder:
                    (BuildContext context, AsyncSnapshot<UserLocation> snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data.address,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.white)),
                    );
                  } else {
                    return Text(
                      'Loading...',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.white)),
                    );
                  }
                },
              ),

              trailing: Text('CHANGE',
                  style: TextStyle(color: Colors.white, fontSize: 13)),
              dense: true,
              visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
            ),
          ),
        ));
  }
}
