import 'package:flutter/material.dart';
import 'package:specialite/widgets/collapsable_nearby_tab_header.dart';
import 'package:specialite/widgets/xxl_builder.dart';

class Nearby extends StatefulWidget {
  @override
  _NearbyState createState() => _NearbyState();
}

class _NearbyState extends State<Nearby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CollapsableNearByTabHeader(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 10,
                  color: Colors.white,
                ),
                Container(color: Colors.white, child: XXLBuilder())
              ],
            ),
          )
        ],
      ),
    );
  }
}
