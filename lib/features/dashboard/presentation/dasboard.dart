import 'package:exachanger/app/app_text_styles.dart';
import 'package:exachanger/features/dashboard/presentation/widgets/news_item.dart';
import 'package:exachanger/features/dashboard/presentation/widgets/product_item.dart';
import 'package:exachanger/features/dashboard/presentation/widgets/promo_item.dart';
import 'package:exachanger/features/history/presentation/widgets/history_item.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  getGreetingTimeText() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

  Widget _notifSection() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(
        Icons.notifications_none_outlined,
        size: 20,
        color: Colors.black,
      ),
    );
  }

  Widget _topSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/exachanger_logo.png'),
            child: Text('U'),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getGreetingTimeText() + ',',
                  style: AppTextStyles.bodyMedium,
                ),
                Text(
                  'User',
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          _notifSection(),
        ],
      ),
    );
  }

  Widget _exchangeSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exchange',
            style: AppTextStyles.titleSmall.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100, // Maximum width per item
              childAspectRatio: 0.8, // Adjust based on content
              // crossAxisSpacing: 10,
              // mainAxisSpacing: 10,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return ProductItem(
                onTap: () => print('Product $index tapped'),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _transactionSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Transactions',
                style: AppTextStyles.titleSmall.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  print('View All Transactions');
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    // undeline
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: HistoryItem(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _whatsnewSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'What\'s New',
                style: AppTextStyles.titleSmall.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  print('View All New Features');
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    // undeline
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          // carousel view
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.2,
            child: CarouselView(
              itemExtent: MediaQuery.sizeOf(context).width * 0.8,
              children: [
                PromoItem(),
                PromoItem(),
                PromoItem(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _newsSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'News',
                style: AppTextStyles.titleSmall.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  print('View All New Features');
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    // undeline
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: NewsItem(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo_text.png',
          height: 25,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _topSection(),
            _exchangeSection(),
            _transactionSection(),
            _whatsnewSection(),
            _newsSection(),
          ],
        ),
      ),
    );
  }
}
