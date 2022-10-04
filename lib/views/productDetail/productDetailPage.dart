import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wireapp/components/customText.dart';
import 'package:wireapp/components/spacing.dart';
import 'package:wireapp/constants/palette.dart';
import 'package:wireapp/constants/strings.dart';
import 'package:wireapp/models/product/productModel.dart';

import 'widget/addToCartButton.dart';
import 'widget/productCart.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      appBar: AppBar(
        backgroundColor: Palette.white,
        centerTitle: true,
        elevation: 0,
        title: CustomText(
          text: product.name ?? Strings.appName,
          textColor: Palette.black,
          fontWeight: FontWeight.w600,
        ),
        actions: const [ProductCartBubble()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: product.id ?? 'image',
                transitionOnUserGestures: true,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl: product.mainImage ?? '',
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacing(height: 16),
              CustomText(
                text: '${product.name ?? ''} - ${product.colour?.toUpperCase() ?? ''}',
                fontWeight: FontWeight.w600,
                textSize: 15,
              ),
              const Spacing(height: 8),
              CustomText(
                text: '${product.price?.amount??''} ${product.price?.currency??''}',
                textColor: Palette.silver,
              ),
              const Divider(height: 32),
              CustomText(text: Strings.variation, textColor: Palette.silver, textSize: 16),
              const Spacing(height: 8),
              CustomText(text: '${Strings.size}${product.sizes?.join(", ")}'),
              const Divider(height: 32),
              CustomText(text: Strings.highlights, textColor: Palette.silver, textSize: 16),
              const Divider(height: 32),
              CustomText(text: '${Strings.brand}${product.brandName ?? '-'}', textSize: 13),
              CustomText(text: '${Strings.sku}${product.sku ?? '-'}', textSize: 13),
              CustomText(text: '${Strings.stock}${product.stockStatus ?? '-'}', textSize: 13),
              CustomText(text: '${Strings.stock}${(product.colour ?? '-').toUpperCase()}', textSize: 13),
              const Spacing(height: 16),
              CustomText(text: Strings.description, textColor: Palette.silver, textSize: 16),
              const Spacing(height: 8),
              CustomText(
                text: product.description ?? '-',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AddToCart(product: product),
        ),
      ),
    );
  }
}
