import 'package:flutter/material.dart';

class Product{
  late final String category;
  late final int quantity;
  late final double rate;
  late final String title;
  late final double price;
  late final String seller;
  late final String image;
  late final String description;
  late final String review;
  late final List<Color> colors;

  Product(
  {
    required this.title,
  required this.quantity,
  required this.rate,
  required this.category,
  required this.price
  ,required this.seller,
  required this.image,
    required this.description,
    required this.review,
    required this.colors,

}
      );



}
final List<Product>products=[

  Product(title: 'wired earphpones',
      quantity: 2,
      rate: 10.9,
      category: 'elctronics',
      price: 210.0,
      seller: 'Alexander',
      image: 'images/allex.png',
      description: 'good and valuable ',
      review: 'reviewd  by Antony Njuguna',
      colors: [Colors.black,Colors.blue,
      Colors.cyanAccent]),
  Product(title: 'perfumes',
      quantity: 2,
      rate: 10.9,
      category: 'elctronics',
      price: 90.0,
      seller: 'Alexander',
      image: 'images/AA.png',
      description: 'good and valuable ',
      review: 'reviewd  by Antony Njuguna',
      colors: [Colors.black,Colors.blue,
        Colors.cyanAccent]),
  Product(title: 'wigs',
      quantity: 2,
      rate: 10.9,
      category: 'elctronics',
      price: 350.0,
      seller: 'Alexander',
      image: 'images/ALLE.png',
      description: 'good and valuable ',
      review: 'reviewd  by Antony Njuguna',
      colors: [Colors.black,Colors.blue,
        Colors.cyanAccent]),
  Product(title: ' female shirts',
      quantity: 2,
      rate: 10.9,
      category: 'clothing',
      price: 500.0,
      seller: 'Alexander',
      image: 'images/shirt1.jpg',
      description: 'good and valuable ',
      review: 'reviewd  by mikeBrian',
      colors: [Colors.black,Colors.blue,
        Colors.cyanAccent]),
  Product(title: 'male shirt',
      quantity: 2,
      rate: 10.9,
      category: 'clothing',
      price: 900.0,
      seller: 'Alexander',
      image: 'images/shirt2.jpg',
      description: 'good and valuable ',
      review: 'reviewd  by Antony Njuguna',
      colors: [Colors.black,Colors.blue,
        Colors.cyanAccent]),
  Product(title: 'skirts ',
      quantity: 2,
      rate: 10.9,
      category: 'elctronics',
      price: 200.0,
      seller: 'Alexander',
      image: 'images/LO.png',
      description: 'good and valuable ',
      review: 'reviewd  by Antony Njuguna',
      colors: [Colors.black,Colors.blue,
        Colors.cyanAccent]),
  Product(title: 'floor',
      quantity: 2,
      rate: 10.9,
      category: 'food',
      price: 100.0,
      seller: 'Alexander',
      image: 'images/NY.png',
      description: 'good and valuable ',
      review: 'reviewd  by Antony Njuguna',
      colors: [Colors.black,Colors.blue,
        Colors.cyanAccent]),
  Product(title: 'sugar',
      quantity: 2,
      rate: 10.9,
      category: 'food',
      price: 130.0,
      seller: 'Alexander',
      image: 'images/RELATION.png',
      description: 'good and valuable ',
      review: 'reviewd  by Antony Njuguna',
      colors: [Colors.black,Colors.blue,
        Colors.cyanAccent]),
  Product(title: 'coke',
      quantity: 2,
      rate: 10.9,
      category: 'beverages',
      price: 38.0,
      seller: 'Alexander',
      image: 'images/2.png',
      description: 'good and valuable ',
      review: 'reviewd  by Antony Njuguna',
      colors: [Colors.black,Colors.blue,
        Colors.cyanAccent]),

  Product(title: 'spirit',
      quantity: 2,
      rate: 10.9,
      category: 'beverages',
      price: 100.0,
      seller: 'Alexander',
      image: 'images/2.png',
      description: 'good and valuable ',
      review: 'reviewd  by Antony Njuguna',
      colors: [Colors.black,Colors.blue,
        Colors.cyanAccent]),

];