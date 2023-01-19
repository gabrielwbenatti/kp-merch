import 'dart:convert';

import 'package:app_kp_merch/app/data/models/base_model.dart';

class CategoryModel extends BaseModel {
  CategoryModel({
    this.id,
    required this.name,
  });

  String? id;
  String name;

  String toMap() {
    return name;
  }

  factory CategoryModel.fromMap(String name) {
    return CategoryModel(
      name: name,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));
}
