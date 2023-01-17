import 'dart:convert';

import 'package:app_kp_merch/app/data/models/base_model.dart';
import 'package:app_kp_merch/app/data/models/category_model.dart';
import 'package:app_kp_merch/app/data/models/product_sizes_model.dart';
import 'package:app_kp_merch/app/data/models/subcategory_model.dart';

class ProductModel extends BaseModel {
  ProductModel({
    required this.name,
    this.price = 0.00,
    this.id,
    this.description,
    this.stock = 0,
    this.category,
    this.subCategory,
    this.originalAmount = 0.00,
    this.sizes,
    // this.discount = 0.00,
  });

  int? id;
  String name;
  String? description;
  int stock;
  CategoryModel? category;
  SubCategoryModel? subCategory;
  double price;
  double originalAmount;
  List<ProductSizesModel>? sizes;
  // double discount;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': name,
      'price': price,
      'description': description,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] ?? 0,
      name: map['title'] ?? 'UNDEFINED',
      price: map['price'] ?? 0.00,
      description: map['description'] ?? 'UNDEFINED',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));
}
