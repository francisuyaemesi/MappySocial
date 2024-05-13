import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mappy_social/config/app_icons.dart';
import 'package:mappy_social/config/app_strings.dart';
import 'package:mappy_social/pages/home_page.dart';
import 'package:mappy_social/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icHome), label: AppStrings.home),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icFavorite),
              label: AppStrings.favorites),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icAdd), label: AppStrings.add),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icMessage),
              label: AppStrings.messages),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icUser), label: AppStrings.user),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Favorite'),
    ),
    Center(
      child: Text('Add Post'),
    ),
    Center(
      child: Text('Messages'),
    ),
    ProfilePage()
  ];
}
