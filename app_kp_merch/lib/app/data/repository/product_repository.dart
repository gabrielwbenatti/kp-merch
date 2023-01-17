import 'package:app_kp_merch/app/data/api.dart';
import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:dio/dio.dart';

class ProductRepository {
  final dio = Dio();

  Future<List<ProductModel>> fetchProducts() async {
    try {
      final response = await dio.get(KpMerchApi.BASE_URL);
      final list = response.data as List;
      return list.map((e) => ProductModel.fromMap(e)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
