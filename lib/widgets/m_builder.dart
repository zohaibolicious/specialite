import 'package:flutter/material.dart';
import 'package:specialite/restaurantcards/m_card.dart';
import 'package:specialite/services/restaurant_service.dart';
import '../constants.dart' as constants;

class MBuider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        child: ListView(
            scrollDirection: Axis.horizontal,
            padding: constants.PADDING_LTRB,
            children: RestaurantService().getRestaurants().map((object) {
              return MCard(restoObject: object); //Feature(photo);
            }).toList()));
  }
}
