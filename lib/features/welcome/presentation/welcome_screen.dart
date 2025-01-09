import 'package:exachanger/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../app/app_values.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // make a gradient background with these colors
          // background: linear-gradient(180deg, #4B7CBF 31.59%, #FFFFFF 100%);
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.primaryLight,
                  AppColors.white,
                ],
              ),
            ),
          ),
          // image for pattern
          Positioned.fill(
            child: Image.asset(
              AppImages.shape,
              fit: BoxFit.cover,
            ),
          ),
          // image for logo
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimens.p24),
              child: Image.asset(
                AppImages.welcome,
                width: double.infinity,
              ),
            ),
          ),
          // text for app name
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.p24, vertical: AppDimens.p24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppDimens.p24),
                  Text(
                    'Exachanger',
                    style: AppTextStyles.titleLarge.copyWith(
                      color: AppColors.white,
                      fontSize: AppDimens.p24,
                    ),
                  ),
                  SizedBox(height: AppDimens.p8),
                  Text(
                    'At Exachanger, we simplify access to the world’s coin and crypto exchange process!.',
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Spacer(),
                  CustomButton(label: "Sign in", onPressed: () {}),
                  SizedBox(height: AppDimens.p12),
                  CustomButton(
                    label: "Sign Up",
                    onPressed: () {},
                    isReverseButton: true,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
