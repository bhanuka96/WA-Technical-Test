import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wireapp/components/customText.dart';
import 'package:wireapp/components/spacing.dart';
import 'package:wireapp/constants/palette.dart';
import 'package:wireapp/constants/strings.dart';
import 'package:wireapp/states/cart/cartManager.dart';

class CartPage extends HookConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProducts).values.toList();

    return Scaffold(
      backgroundColor: Palette.white,
      appBar: AppBar(
        elevation: 0,
        title: CustomText(text: Strings.myCart, fontWeight: FontWeight.w600, textSize: 16),
      ),
      body: cart.isEmpty
          ? Center(
              child: CustomText(
                text: Strings.noItem,
                textSize: 15,
              ),
            )
          : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (_, int index) {
                final model = cart[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Palette.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Palette.lightBlack,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      leading: CachedNetworkImage(
                        imageUrl: model.product.mainImage!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: model.product.name ?? '',
                            maxLine: 1,
                            textSize: 13,
                            fontWeight: FontWeight.w600,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                          const Spacing(height: 4),
                          CustomText(
                            text: '${model.product.price?.amount ?? ''} ${model.product.price?.currency ?? ''}',
                            textSize: 13,
                            fontWeight: FontWeight.w600,
                            textColor: Palette.silver,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    ref.read(cartProvider.notifier).remove(model.product, model.count);
                                  },
                                  iconSize: 15,
                                  icon: const Icon(Icons.remove, color: Palette.black)),
                              Container(
                                width: 40,
                                height: 20,
                                color: Palette.silver1,
                                child: Center(
                                  child: CustomText(
                                    text: '${model.count}',
                                    textSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    ref.read(cartProvider.notifier).add(model.product, false);
                                  },
                                  iconSize: 15,
                                  icon: const Icon(Icons.add, color: Palette.black)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
            height: 50,
            child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: CustomText(
                      text: '${Strings.total}${cart.fold(0.0, (sum, item) => sum + (double.parse(item.product.price!.amount!) * item.count)).toStringAsFixed(2)}',
                      fontWeight: FontWeight.w600),
                ))),
      ),
    );
  }
}
