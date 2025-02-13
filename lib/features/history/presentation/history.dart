import 'package:exachanger/features/history/presentation/widgets/history_filter.dart';
import 'package:exachanger/features/history/presentation/widgets/history_item.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
        actions: [
          // filter button
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // show bottom sheet
              showModalBottomSheet(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.8,
                ),
                context: context,
                builder: (context) {
                  return HistoryFilter();
                },
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: HistoryItem(),
          );
        },
      ),
    );
  }
}
