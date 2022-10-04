import 'package:flutter/material.dart';
import 'package:wireapp/views/cart/cartPage.dart';

import '../models/routingArgument/routingArgument.dart';
import '../views/dashbord/dashboardPage.dart';
import '../views/productDetail/productDetailPage.dart';
import '../views/splash/splashPage.dart';

part 'appRoute.dart';

class AppRoutes {
  static const initial = Routes.splash;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      case Routes.productDetail:
        return MaterialPageRoute(builder: (_) {
          final Arguments arguments = settings.arguments as Arguments;
          return ProductDetailPage(product: arguments.productModel!);
        });
      case Routes.cart:
        return MaterialPageRoute(builder: (_) => const CartPage());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
