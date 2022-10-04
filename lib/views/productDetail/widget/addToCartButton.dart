import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wireapp/components/customSnackBar.dart';
import 'package:wireapp/constants/strings.dart';

import '../../../components/customText.dart';
import '../../../constants/palette.dart';
import '../../../models/product/productModel.dart';
import '../../../states/cart/cartManager.dart';

class AddToCart extends ConsumerWidget {
  final ProductModel product;

  const AddToCart({required this.product, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        if (product.stockStatus?.toUpperCase() == 'IN STOCK') {
          ref.read(cartProvider.notifier).add(product);
          return;
        }
        CustomSnackBar.showSnackBar(Strings.stockNotAvailable);
      },
      child: CustomText(
        text: Strings.addToCart,
        textColor: Palette.white,
      ),
    );
  }
}
