import 'package:flutter/material.dart';

part of '../view.dart';



class _List extends StatelessWidget {
  const _List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


class ProductsData {
  late final List<ProductsModel> list;

  ProductsData.fromJson(Map<String, dynamic> json) {
    list = List.from(
      json['list'],
    ).map((e) => ProductsModel.fromJson(e)).toList();
  }
}

class ProductsModel {
  late final int id;
  late final String name;
  late final String description;
  late final double price;
  late final int stock;
  late final String imageUrl;
  late final Null categoryId;

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stock = json['stock'];
    imageUrl = json['imageUrl'];
    categoryId = null;
  }
}
