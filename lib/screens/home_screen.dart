import 'package:flutter/material.dart';

import '../widgets/cards_row.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Discover Hiroshima',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Order your favorite food',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'We have many restaurants available for booking. Find the one you like and place an order now!',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 17.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: 200,
                width: double.infinity,
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          CardsRow(),
          SizedBox(height: 30),
          CardsRow(),
          SizedBox(height: 30),
          CardsRow(),
          SizedBox(height: 30),
        ],
      ),
    );
    // return Scaffold(
    //   body: Container(
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Container(
    //           height: 77,
    //           padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
    //           child: Center(
    //               child: Column(
    //             children: [
    //               Text(
    //                 "Discover",
    //                 style: TextStyle(fontSize: 25),
    //               ),
    //               Text(
    //                 "Hiroshima",
    //                 style: TextStyle(fontSize: 15),
    //               ),
    //             ],
    //           )),
    //         ),
    //         Container(
    //           height: 600,
    //           // padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    //           child: ListView(
    //             children: <Widget>[
    //               CardsRow(),
    //               CardsRow(),
    //               CardsRow(),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
