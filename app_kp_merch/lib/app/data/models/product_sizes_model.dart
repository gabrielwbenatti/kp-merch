import 'package:app_kp_merch/app/data/models/base_model.dart';

class ProductSizesModel extends BaseModel {
  ProductSizesModel(
    this.size, {
    this.stock = 0,
  });

  String size;
  int stock;
}
