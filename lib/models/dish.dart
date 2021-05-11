import 'dart:convert';
import 'package:flutter/material.dart';

class Dish {
  final String id;
  String name;
  String description;
  String image;
  String category;
  double price;

  Dish({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.image,
    @required this.category,
    @required this.price,
  });

  Dish copyWith({
    String id,
    String name,
    String description,
    String image,
    String category,
    double price,
  }) {
    return Dish(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      category: category ?? this.category,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'category': category,
      'price': price,
    };
  }

  factory Dish.fromMap(Map<String, dynamic> map) {
    return Dish(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      image: map['image'],
      category: map['category'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Dish.fromJson(String source) => Dish.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Dish(id: $id, name: $name, description: $description, image: $image, category: $category, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Dish &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.image == image &&
      other.category == category &&
      other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      image.hashCode ^
      category.hashCode ^
      price.hashCode;
  }
}
