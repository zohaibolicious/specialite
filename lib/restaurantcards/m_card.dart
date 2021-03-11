import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:specialite/datamodels/restaurant_object.dart';
import 'package:specialite/pages/restaurant_page.dart';

class MCard extends StatelessWidget {
  MCard({Key key, @required this.restoObject}) : super(key: key);

  final RestaurantObject restoObject;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: [
              Container(
                width: 160,
                height: 110,
                child: CachedNetworkImage(
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    fit: BoxFit.cover,
                    imageUrl: restoObject.imageURL),
              ),
              Positioned(
                bottom: 7,
                left: 7,
                child: Container(
                  height: 65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        restoObject.title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(restoObject.subtitle),
                      Divider(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Text(restoObject.pricing),
                          Text(' • '),
                          Text('${restoObject.baseEstimate} min'),
                          Text(' • '),
                          Container(
                            child: restoObject.rating >= 9
                                ? Text(' 😍 ')
                                : restoObject.rating >= 8
                                ? Text(' 😀 ')
                                : Text(' 😔 '),
                          ),
                          Text(
                            restoObject.rating.toString(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  color: Colors.black,
                  height: 1,
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 2,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RestaurantPage(restoObject),
            ),
          );
        });
  }
}
