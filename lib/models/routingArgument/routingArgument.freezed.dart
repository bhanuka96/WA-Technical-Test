// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'routingArgument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Arguments {
  ProductModel? get productModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArgumentsCopyWith<Arguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArgumentsCopyWith<$Res> {
  factory $ArgumentsCopyWith(Arguments value, $Res Function(Arguments) then) =
      _$ArgumentsCopyWithImpl<$Res>;
  $Res call({ProductModel? productModel});

  $ProductModelCopyWith<$Res>? get productModel;
}

/// @nodoc
class _$ArgumentsCopyWithImpl<$Res> implements $ArgumentsCopyWith<$Res> {
  _$ArgumentsCopyWithImpl(this._value, this._then);

  final Arguments _value;
  // ignore: unused_field
  final $Res Function(Arguments) _then;

  @override
  $Res call({
    Object? productModel = freezed,
  }) {
    return _then(_value.copyWith(
      productModel: productModel == freezed
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ));
  }

  @override
  $ProductModelCopyWith<$Res>? get productModel {
    if (_value.productModel == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.productModel!, (value) {
      return _then(_value.copyWith(productModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_ArgumentsCopyWith<$Res> implements $ArgumentsCopyWith<$Res> {
  factory _$$_ArgumentsCopyWith(
          _$_Arguments value, $Res Function(_$_Arguments) then) =
      __$$_ArgumentsCopyWithImpl<$Res>;
  @override
  $Res call({ProductModel? productModel});

  @override
  $ProductModelCopyWith<$Res>? get productModel;
}

/// @nodoc
class __$$_ArgumentsCopyWithImpl<$Res> extends _$ArgumentsCopyWithImpl<$Res>
    implements _$$_ArgumentsCopyWith<$Res> {
  __$$_ArgumentsCopyWithImpl(
      _$_Arguments _value, $Res Function(_$_Arguments) _then)
      : super(_value, (v) => _then(v as _$_Arguments));

  @override
  _$_Arguments get _value => super._value as _$_Arguments;

  @override
  $Res call({
    Object? productModel = freezed,
  }) {
    return _then(_$_Arguments(
      productModel: productModel == freezed
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ));
  }
}

/// @nodoc

class _$_Arguments implements _Arguments {
  _$_Arguments({this.productModel});

  @override
  final ProductModel? productModel;

  @override
  String toString() {
    return 'Arguments(productModel: $productModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Arguments &&
            const DeepCollectionEquality()
                .equals(other.productModel, productModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productModel));

  @JsonKey(ignore: true)
  @override
  _$$_ArgumentsCopyWith<_$_Arguments> get copyWith =>
      __$$_ArgumentsCopyWithImpl<_$_Arguments>(this, _$identity);
}

abstract class _Arguments implements Arguments {
  factory _Arguments({final ProductModel? productModel}) = _$_Arguments;

  @override
  ProductModel? get productModel;
  @override
  @JsonKey(ignore: true)
  _$$_ArgumentsCopyWith<_$_Arguments> get copyWith =>
      throw _privateConstructorUsedError;
}
