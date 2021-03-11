import 'package:flutter/material.dart';
import 'package:specialite/datamodels/category_object.dart';
import 'package:specialite/widgets/dishes_builder.dart';

class CategoryDishesPage extends StatelessWidget {
  CategoryDishesPage(this.categoryObject);

  final CategoryObject categoryObject;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            categoryObject.title,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7),
          child: DishesBuilder(categoryObject),
        ),
      ),
    );
  }
}
