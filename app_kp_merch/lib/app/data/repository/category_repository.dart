import 'package:app_kp_merch/app/data/api.dart';
import 'package:app_kp_merch/app/data/models/category_model.dart';
import 'package:dio/dio.dart';

class CategoryRepository {
  final dio = Dio();

  Future<List<CategoryModel>> fetchCategories() async {
    try {
      final response =
          await dio.get('${KpMerchApi.BASE_URL}/products/categories');
      final list = response.data as List;
      return list.map((category) => CategoryModel.fromMap(category)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
