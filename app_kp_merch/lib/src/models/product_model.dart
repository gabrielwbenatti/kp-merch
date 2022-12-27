import 'package:app_kp_merch/src/models/base_model.dart';
import 'package:app_kp_merch/src/models/category_model.dart';
import 'package:app_kp_merch/src/models/subcategory_model.dart';

class ProductModel extends BaseModel {
  ProductModel({
    this.id,
    this.name,
    this.description,
    this.stock = 0,
    this.category,
    this.subCategory,
    this.amount = 0.00,
    this.discount = 0.00,
  });

  String? id;
  String? name;
  String? description;
  int stock;
  CategoryModel? category;
  SubCategoryModel? subCategory;
  double amount;
  double discount;
}
