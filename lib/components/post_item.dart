import 'package:flutter/material.dart';
import 'package:mappy_social/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/pic.png',
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset('assets/temp/beauty.jpeg'),
          SizedBox(
            height: 12,
          ),
          const Text(
            'The sun is a daily reminder that we too can rise from the darkness, we too can shine our own light ☺️💖',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
