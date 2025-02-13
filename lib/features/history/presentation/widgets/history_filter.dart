import 'package:exachanger/app/app_values.dart';
import 'package:exachanger/shared/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class HistoryFilter extends StatefulWidget {
  const HistoryFilter({super.key});

  @override
  State<HistoryFilter> createState() => _HistoryFilterState();
}

class _HistoryFilterState extends State<HistoryFilter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'History Filter',
                  style: AppTextStyles.titleMedium,
                ),
                CustomOutlinedButton(
                  label: "Reset",
                  onPressed: () {},
                  width: 100,
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
