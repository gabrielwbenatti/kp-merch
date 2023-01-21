import 'package:app_kp_merch/app/data/api.dart';
import 'package:app_kp_merch/app/data/models/product_model.dart';
import 'package:dio/dio.dart';

class ProductRepository {
  final dio = Dio();

  Future<List<ProductModel>> fetchProducts({
    Map<String, dynamic>? parameters,
  }) async {
    try {
      final response = await dio.get(
        '${KpMerchApi.BASE_URL}/products',
        queryParameters: parameters,
      );
      final list = response.data as List;
      return list.map((product) => ProductModel.fromMap(product)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
