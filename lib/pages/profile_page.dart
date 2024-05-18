import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mappy_social/components/toolbar.dart';
import 'package:mappy_social/components/user_avatar.dart';
import 'package:mappy_social/config/app_routes.dart';
import 'package:mappy_social/config/app_strings.dart';
import 'package:mappy_social/provider/app_repo.dart';
import 'package:mappy_social/styles/app_text.dart';
import 'package:provider/provider.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AppRepo>().user;
    return Scaffold(
      appBar: Toolbar(title: AppStrings.profile, actions: [
        PopupMenuButton<ProfileMenu>(
          onSelected: (value) {
            switch (value) {
              case ProfileMenu.edit:
                Navigator.of(context).pushNamed(AppRoutes.editProfile);
                break;
              case ProfileMenu.logout:
                print('Log out');
                break;
              default:
            }
          },
          icon: const Icon(Icons.more_vert_rounded),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text(AppStrings.edit),
                value: ProfileMenu.edit,
              ),
              PopupMenuItem(
                child: Text(AppStrings.logout),
                value: ProfileMenu.logout,
              ),
            ];
          },
        )
      ]),
      body: Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            '${user?.id} ${user?.firstname} ${user?.lastname}',
            style: AppText.header2,
          ),
          Text(
            'Madahascar',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.followers),
                ],
              ),
              Column(
                children: [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.posts),
                ],
              ),
              Column(
                children: [
                  Text(
                    '860',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.following),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}
