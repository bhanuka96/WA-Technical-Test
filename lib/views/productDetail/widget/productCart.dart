import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../components/customText.dart';
import '../../../constants/palette.dart';
import '../../../routes/appScreens.dart';
import '../../../states/cart/cartManager.dart';

class ProductCartBubble extends ConsumerWidget {
  const ProductCartBubble({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProducts).values;
    if (cart.isEmpty) return const SizedBox();
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: Palette.silver,
            size: 30,
          ),
          onPressed: () {
            Navigator.pushNamed(context, Routes.cart);
          },
        ),
        Positioned.fill(
          right: 6,
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Palette.black,
                shape: BoxShape.circle,
              ),
              child: CustomText(
                text: '${cart.fold(0, (sum, item) => sum + item.count)}',
                textColor: Palette.white,
                textSize: 11,
              ),
            ),
          ),
        )
      ],
    );
  }
}
