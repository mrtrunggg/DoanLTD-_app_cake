import 'package:flutter/material.dart';
List itemsTab = [
  {"icon": Icons.home, "size": 40.0},
  {"icon": Icons.search, "size": 40.0},
  {"icon": Icons.notifications_none, "size": 40.0},
  {"icon": Icons.shopping_cart, "size": 40.0},
];
// ignore: camel_case_types
class cartCake {
  final String imageUrl;
  final String name;
  final int price;
  final String size;

  cartCake({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.size,
  });
}

final List<cartCake> cake = [
  cartCake(
    imageUrl: 'assets/images/banh0.jpg',
    name: 'Bánh Mì Đen Ăn Kiêng Mix Hạt',
    price: 25000,
    size: '500g',
    ),
  cartCake(
    imageUrl: 'assets/images/banh1.jpg',
    name: 'Bánh Mì Sanwich Với Lớp Phủ Trứng',
    price: 98000,
    size: '750g',
  ),
  cartCake(
    imageUrl: 'assets/images/banh2.jpg',
    name: 'Bánh Mì Cute Hình Gấu Trúc',
    price: 78000,
    size: '550g',
  ),
];
const List cartList = [
  {   
    "img": 'banh0.jpg',
    "name":  'Bánh Mì Đen Ăn Kiêng Mix Hạt',
    "price": "đ98.000",
    "size": '550g',
  },
  {
    "img": 'banh1.jpg',
    "name":  'Bánh Mì Sanwich Với Lớp Phủ Trứng',
    "price": "đ78.000",
    "size": '750g',
  },
  {
    "img": 'banh2.jpg',
    "name":  'Bánh Mì Cute Hình Gấu Trúc',
    "price": "đ55.000",
    "size": '250g',
  },
];
const List favoriteList = [
  {   
    "img": 'banh0.jpg',
    "name":  'Bánh Mì Đen Ăn Kiêng Mix Hạt',
    "price": "đ98.000",
    "size": '550g',
  },
  {
    "img": 'banh1.jpg',
    "name":  'Bánh Mì Sanwich Với Lớp Phủ Trứng',
    "price": "đ78.000",
    "size": '750g',
  },
];
