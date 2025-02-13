// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ExchangeItem extends StatelessWidget {
  const ExchangeItem({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  _statusChip() {
    return Chip(
      label: Text('Active'),
      backgroundColor: Colors.green,
    );
  }

  _topSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('USD'),
            Text('United States Dollar'),
          ],
        ),
        _statusChip(),
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
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
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
