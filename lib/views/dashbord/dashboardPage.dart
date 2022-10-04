import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wireapp/components/customText.dart';
import 'package:wireapp/constants/palette.dart';
import 'package:wireapp/constants/strings.dart';
import 'package:wireapp/states/product/productManager.dart';
import 'package:wireapp/views/dashbord/widgets/productTile.dart';

import '../../components/customError.dart';
import '../../components/customLoading.dart';
import '../productDetail/widget/productCart.dart';

class DashboardPage extends HookConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Palette.white,
      appBar: AppBar(
        backgroundColor: Palette.white,
        elevation: 0,
        title: CustomText(text: Strings.appBar, textColor: Palette.black, fontWeight: FontWeight.w600, textSize: 16),
        actions: const [ProductCartBubble()],
      ),
      body: ref.watch(productFutureProvider).when(
          data: (data) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1),
              itemCount: data?.length ?? 0,
              itemBuilder: (_, index) {
                return ProductTile(product: data?[index]);
              },
            );
          },
          error: (e, s) => const CustomError(),
          loading: () => const LoadingWidget()),
    );
  }
}
