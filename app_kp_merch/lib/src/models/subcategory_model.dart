import 'package:app_kp_merch/src/models/base_model.dart';
import 'package:app_kp_merch/src/models/category_model.dart';

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
