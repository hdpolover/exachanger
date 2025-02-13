// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:exachanger/app/app_text_styles.dart';
import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  _statusChip() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        'Success',
        style: AppTextStyles.bodySmall.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }

  _productView() {
    return Row(
      children: [
        Image.asset(
          'assets/exachanger_logo.png',
          width: 40,
          height: 40,
        ),
        Text('PayPal'),
      ],
    );
  }

  _topSection() {
    String currentDate = DateTime.now().toString();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: _statusChip(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _productView(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 20,
                  ),
                ),
                _productView()
              ],
            ),
            Text(
              currentDate,
              style: AppTextStyles.bodySmall.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }

  _bottomSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('EUR'),
        Text('0.85'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        // decoration for the card
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          _topSection(),
          _bottomSection(),
        ],
      ),
    );
  }
}
