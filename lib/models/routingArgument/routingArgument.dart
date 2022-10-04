import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wireapp/models/product/productModel.dart';

part 'routingArgument.freezed.dart';

@freezed
class Arguments with _$Arguments {
  factory Arguments({
   ProductModel? productModel
  }) = _Arguments;
}