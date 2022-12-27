import 'package:app_kp_merch/app/data/models/base_model.dart';
import 'package:app_kp_merch/app/data/models/category_model.dart';

class SubCategoryModel extends BaseModel {
  SubCategoryModel({
    this.id,
    this.name,
    this.category,
  });

  String? id;
  String? name;
  CategoryModel? category;
}
