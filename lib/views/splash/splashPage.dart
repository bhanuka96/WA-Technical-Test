import 'package:flutter/material.dart';
import 'package:wireapp/constants/palette.dart';
import 'package:wireapp/routes/appScreens.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed(Routes.dashboard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Palette.white,
      body: Center(
          child: Icon(
        Icons.shopping_cart_outlined,
        size: 50,
      )),
    );
  }
}
