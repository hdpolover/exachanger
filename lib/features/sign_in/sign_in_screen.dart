import 'package:exachanger/routes/app_router.dart';
import 'package:exachanger/shared/widgets/custom_button.dart';
import 'package:exachanger/shared/widgets/custom_outlined_button.dart';
import 'package:exachanger/shared/widgets/cutom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/app_values.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  void _submit() {
    // if (_formKey.currentState!.validate()) {
    //   _formKey.currentState!.save(); // Save the form fields
    //   // Use _email and _password to sign in
    //   print('Email: $_email');
    //   print('Password: $_password');
    // }

    context.goNamed(Routes.home.name);
  }

  _signInForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          CustomTextFormField(
            labelText: 'Email',
            hintText: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icon(Icons.email_outlined),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return 'Enter a valid email';
              }
              return null;
            },
            onChanged: (value) => _email = value, // Dynamically save value
          ),
          CustomTextFormField(
            labelText: 'Password',
            hintText: 'Enter your password',
            prefixIcon: Icon(Icons.lock_outline),
            isObscure: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
            onChanged: (value) => _password = value, // Dynamically save value
          ),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              child: Text(
                'Forgot Password?',
                style: AppTextStyles.bodySmall.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          CustomButton(
            label: "Sign In",
            onPressed: _submit,
          ),
          Center(
            child: Text(
              'or',
              style: AppTextStyles.bodyMedium,
            ),
          ),
          CustomOutlinedButton(
            label: "Google",
            onPressed: _submit,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text(
              'Welcome Back!',
              style: AppTextStyles.titleLarge,
            ),
            Text(
              'Sign in to continue',
              style: AppTextStyles.bodyMedium,
            ),
            _signInForm(),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter, // align bottom
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: AppTextStyles.bodyMedium,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Sign Up',
                      style: AppTextStyles.bodyMedium.copyWith(
                        color: AppColors.primaryLight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
