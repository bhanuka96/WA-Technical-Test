import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wireapp/models/product/productModel.dart';

import '../../../components/customText.dart';
import '../../../components/spacing.dart';
import '../../../constants/palette.dart';
import '../../../models/routingArgument/routingArgument.dart';
import '../../../routes/appScreens.dart';

class ProductTile extends StatelessWidget {
  final ProductModel? product;

  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, Routes.productDetail, arguments: Arguments(productModel: product));
        },
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
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                Hero(
                  tag: product?.id ?? 'image',
                  transitionOnUserGestures: true,
                  child: CachedNetworkImage(
                    imageUrl: product?.mainImage ?? '',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                CustomText(
                  text: product?.name ?? '-',
                  fontWeight: FontWeight.w600,
                  textSize: 14,
                  textAlign: TextAlign.center,
                  maxLine: 2,
                  textOverflow: TextOverflow.ellipsis,
                ),
                const Spacing(height: 4),
                CustomText(
                  text: '${product?.price?.amount ?? ''} ${product?.price?.currency ?? ''}',
                  fontWeight: FontWeight.w600,
                  textSize: 12,
                  textColor: Palette.silver,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
