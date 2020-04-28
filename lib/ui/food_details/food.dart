import 'package:flutter/material.dart';

class Food {
  final String imagePath,
      title,
      description,
      location,
      duration,
      punchLine1,
      punchLine2,
      members;
  final List categoryIds, galleryImages;
  final String price;

  Food(
      {this.imagePath,
      this.title,
      this.description,
      this.location,
      this.duration,
      this.punchLine1,
      this.punchLine2,
      this.members,
      this.categoryIds,
      this.galleryImages,
      this.price});
}

final chickenGravy = Food(
    imagePath: 'images/grilled_chicken3.jpg',
    title: 'Chicken gravy',
    description: 'Local whole chicken with spices',
    duration: '30 Min',
    punchLine1: 'Easy',
    punchLine2: 'The best meal worth your money',
    members: '4 members',
    price: '15000',
    categoryIds: [
      0,
      1
    ],
    galleryImages: [
      'images/grilled_chicken1.jpg',
      'images/grilled_chicken2.jpg',
      'images/grilled_chicken3.jpg',
      'images/grilled_chicken4.jpg'
    ]);

final goatsMeatGravy = Food(
    imagePath: 'images/grilled_chicken2.jpg',
    title: 'Goats Meat gravy',
    description: 'Fresh goats meat with all ingredients',
    duration: '30 Min',
    punchLine1: 'Fresh mixed pieces',
    punchLine2:
        'We select the best goats meat pieces. Choose either ribs or other parts',
    members: 'Feeds 4 people',
    price: '18000',
    categoryIds: [
      0,
      2
    ],
    galleryImages: [
      'images/goats_meat1.jpg',
      'images/grilled_chicken2.jpg',
      'images/grilled_chicken3.jpg',
      'images/grilled_chicken4.jpg'
    ]);

final fishGravy = Food(
    imagePath: 'images/grilled_chicken2.jpg',
    title: 'Tilapia fish gravy',
    description: 'Cleaned fresh fish with all ingredients',
    duration: '30 Min',
    punchLine1: 'Easy',
    punchLine2:
        'We select the best goats meat pieces. Choose either ribs or other parts',
    members: '4 members',
    price: '20000',
    categoryIds: [
      0,
      3
    ],
    galleryImages: [
      'images/grilled_chicken2.jpg',
      'images/grilled_chicken3.jpg',
      'images/grilled_chicken4.jpg'
    ]);

final fruitSalad = Food(
    imagePath: 'images/grilled_chicken2.jpg',
    title: 'Goats Meat gravy',
    description: 'Fresh goats meat with all ingredients',
    duration: '30 Min',
    punchLine1: 'Easy',
    members: '4 members',
    price: '10000',
    categoryIds: [
      0,
      5
    ],
    galleryImages: [
      'images/grilled_chicken2.jpg',
      'images/grilled_chicken3.jpg',
      'images/grilled_chicken4.jpg'
    ]);

final salads = Food(
    imagePath: '',
    title: 'Vegetables',
    description: 'Collection of fresh vegetables',
    duration: '05 Min',
    punchLine1: 'Easy',
    members: '2 members',
    price: '17000',
    categoryIds: [
      0,
      6
    ],
    galleryImages: [
      'images/grilled_chicken2.jpg',
      'images/grilled_chicken3.jpg',
      'images/grilled_chicken4.jpg'
    ]);
final foods = [goatsMeatGravy, goatsMeatGravy, fishGravy, fruitSalad, salads];
