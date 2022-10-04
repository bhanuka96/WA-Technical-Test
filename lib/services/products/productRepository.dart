import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../core/exceptions/appException.dart';
import '../../core/net/apiEndpoints.dart';
import '../../models/product/productModel.dart';

abstract class ProductRepository {
  Future<List<ProductModel?>?>? get();
}

class ProductRepositoryImpl implements ProductRepository {
  final Dio _dio;

  ProductRepositoryImpl(this._dio);

  @override
  Future<List<ProductModel?>?>? get() async {
    try {
      final response = await _dio.get('${APIEndpoints.baseUrl}/${APIEndpoints.products}');
      if (response.statusCode == 200) {
        final results = List<Map<String, dynamic>>.from(response.data['data']);
        return results.map((data) => ProductModel.fromJson(data)).toList();
      }
      return null;
    } on DioError catch (dioError) {
      debugPrint('error $dioError');
      throw AppException.fromDioError(dioError);
    }
  }
}
