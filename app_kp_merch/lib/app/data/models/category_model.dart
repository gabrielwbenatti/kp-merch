import 'package:app_kp_merch/app/data/models/base_model.dart';

class CategoryModel extends BaseModel {
  CategoryModel(
    this.name, {
    this.id,
  });

  String? id;
  String name;
}
