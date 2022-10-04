
import 'package:freezed_annotation/freezed_annotation.dart';

part 'productModel.freezed.dart';
part 'productModel.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    String? id,
    String? sku,
    String? name,
    String? brandName,
    String? mainImage,
    Price? price,
    List<String>? sizes,
    String? stockStatus,
    String? colour,
    String? description,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}

@freezed
class Price with _$Price {
  const factory Price({
    String? amount,
    String? currency,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}