import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:specialite/widgets/pill_button.dart';

import 'restaurant_card.dart';

class CardsRow extends StatefulWidget {
  @override
  _CardsRowState createState() => _CardsRowState();
}

class _CardsRowState extends State<CardsRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235,
      // width: MediaQuery.of(context).size.width,
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                'New Restaurants',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
              PillButton(
                onPressed: () {},
                buttonText: "See All",
                width: 70,
                height: 35,
                fontSize: 12,
                color: Colors.red[400],
                textColor: Colors.white,
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 190,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(width: 15),
              RestaurantCard(),
              RestaurantCard(),
              RestaurantCard(),
              RestaurantCard(),
              RestaurantCard(),
              SizedBox(width: 15),
            ],
          ),
        ),
      ]),
    );
  }
}
