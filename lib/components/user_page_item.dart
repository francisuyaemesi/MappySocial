import 'package:flutter/material.dart';
import 'package:mappy_social/components/user_avatar.dart';
import 'package:mappy_social/data/model/user.dart';
import 'package:mappy_social/styles/app_colors.dart';
import 'package:mappy_social/styles/app_text.dart';

class UserPageItem extends StatelessWidget {
  final User user;
  const UserPageItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              UserAvatar(
                size: 50,
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.firstname} ${user.lastname}',
                    style: AppText.subtitle1.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    user.location?.name ?? '',
                    style: AppText.body2.copyWith(
                      color: AppColors.black,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
