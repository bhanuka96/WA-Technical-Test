import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wireapp/models/product/productModel.dart';

import '../../services/products/productRepository.dart';

final productServiceProvider = Provider<ProductRepository>((ref) => ProductRepositoryImpl(Dio()));

final productFutureProvider = FutureProvider.autoDispose<List<ProductModel?>?>((ref) async {
  ref.keepAlive();

  final productService = ref.watch(productServiceProvider);

  final products = await productService.get();
  return products;
});
