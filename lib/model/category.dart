import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;

  Category({this.categoryId, this.name, this.icon});
}

final allCategory = Category(
  categoryId: 0,
  name: 'All Meals',
  icon: Icons.search,
);

final singleItems =
    Category(categoryId: 1, name: 'By Item', icon: Icons.ac_unit);

final meat = Category(categoryId: 2, name: 'Meat', icon: Icons.ac_unit);

final fish = Category(categoryId: 3, name: 'Fish', icon: Icons.cloud_circle);

final chicken =
    Category(categoryId: 4, name: 'chicken', icon: Icons.cloud_circle);

final fruits =
    Category(categoryId: 5, name: 'Fruits', icon: Icons.cloud_circle);

final salads =
    Category(categoryId: 6, name: 'Salads', icon: Icons.settings_bluetooth);

final categories = [
  allCategory,
  singleItems,
  meat,
  fish,
  chicken,
  fruits,
  salads,
];
