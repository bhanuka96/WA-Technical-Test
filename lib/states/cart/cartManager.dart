import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wireapp/components/customSnackBar.dart';
import 'package:wireapp/models/cart/productCartModel.dart';
import 'package:wireapp/models/product/productModel.dart';

final cartProvider = StateNotifierProvider<CartManager, Map<String, ProductCart>>((ref) {
  return CartManager({});
});

final cartProducts = Provider<Map<String, ProductCart>>((ref) {
  final items = ref.watch(cartProvider);
  return items;
});

/// An object that controls a list of [ProductCart].
class CartManager extends StateNotifier<Map<String, ProductCart>> {
  CartManager([Map<String, ProductCart>? initial]) : super(initial ?? {});

  void add(ProductModel model, [bool showSnackBar = true]) {
    if (!state.containsKey(model.id)) {
      state = {
        ...state,
        model.id!: ProductCart(
          id: model.id!,
          product: model,
          count: 1,
        )
      };
    } else {
      state = {...state}..update(
          model.id!,
          (value) => ProductCart(
                id: model.id!,
                product: model,
                count: value.count + 1,
              ));
    }
    if (showSnackBar) CustomSnackBar.showSnackBar('Added  to cart successfully!');
  }

  void remove(ProductModel model, int before) {
    if (before == 1) {
      state = {...state}..remove(model.id);
    } else {
      state = {...state}..update(
          model.id!,
          (value) => ProductCart(
                id: model.id!,
                product: model,
                count: value.count - 1,
              ));
    }
  }
}
