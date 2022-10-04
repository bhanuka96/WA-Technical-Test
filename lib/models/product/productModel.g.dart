// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as String?,
      sku: json['sku'] as String?,
      name: json['name'] as String?,
      brandName: json['brandName'] as String?,
      mainImage: json['mainImage'] as String?,
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
      sizes:
          (json['sizes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      stockStatus: json['stockStatus'] as String?,
      colour: json['colour'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'name': instance.name,
      'brandName': instance.brandName,
      'mainImage': instance.mainImage,
      'price': instance.price,
      'sizes': instance.sizes,
      'stockStatus': instance.stockStatus,
      'colour': instance.colour,
      'description': instance.description,
    };

_$_Price _$$_PriceFromJson(Map<String, dynamic> json) => _$_Price(
      amount: json['amount'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$_PriceToJson(_$_Price instance) => <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };
