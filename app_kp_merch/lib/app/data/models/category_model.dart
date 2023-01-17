import 'dart:convert';

import 'package:app_kp_merch/app/data/models/base_model.dart';

class CategoryModel extends BaseModel {
  CategoryModel({
    this.id,
    required this.name,
  });

  String? id;
  String name;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'],
      name: map['name'] ?? 'UNDEFINED',
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));
}
