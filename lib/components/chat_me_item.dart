import 'package:flutter/material.dart';
import 'package:mappy_social/components/user_avatar.dart';
import 'package:mappy_social/data/model/chat.dart';
import 'package:mappy_social/styles/app_colors.dart';

class ChatMeItem extends StatelessWidget {
  final Chat chat;
  const ChatMeItem({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 30, top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: Text(
                  chat.message,
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          UserAvatar(),
        ],
      ),
    );
  }
}
