import 'package:flutter/foundation.dart' show immutable;
import 'package:wireapp/models/product/productModel.dart';

/// A read-only description of a cart-item
@immutable
class ProductCart {
  final String id;
  final ProductModel product;
  final int count;

  const ProductCart({
    required this.product,
    required this.id,
    this.count = 0,
  });
}