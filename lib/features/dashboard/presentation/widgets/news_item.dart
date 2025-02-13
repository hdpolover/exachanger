import 'package:exachanger/app/app_values.dart';
import 'package:exachanger/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.newsDetail.name);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Bitcoin Analyst Explain Why Price is Rallying Again',
                    style: AppTextStyles.bodyLarge,
                    softWrap: true,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text('5 hours'),
                      const SizedBox(width: 10),
                      Text('by Author'),
                      SizedBox(width: 10),
                      Text('in Category'),
                    ],
                  ),
                ],
              ),
            ),
            Hero(
              tag: 'news',
              child: Image.asset(
                'assets/welcome.png',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
