import 'package:flutter/material.dart';

class PromoItem extends StatelessWidget {
  const PromoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.sizeOf(context).width * 0.8,
      child: Image.asset(
        'assets/welcome.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
