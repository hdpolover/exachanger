import 'package:exachanger/app/app_values.dart';
import 'package:exachanger/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    goNext();
  }

  goNext() {
    // add delay for splash screen
    Future.delayed(Duration(seconds: 2), () {
      context.goNamed(Routes.welcome.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // image for pattern
          Positioned.fill(
            child: Image.asset(
              AppImages.pattern,
              fit: BoxFit.cover,
            ),
          ),
          // image for logo
          Center(
            child: Image.asset(
              AppImages.logo,
              width: 200,
              height: 200,
            ),
          ),
          // text for app name
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: AppDimens.p34),
              child: Text(
                'PT. Vepay Multipayment Internasional',
                style: AppTextStyles.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
