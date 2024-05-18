import 'package:flutter/material.dart';
import 'package:mappy_social/config/app_routes.dart';
import 'package:mappy_social/data/model/user.dart';
import 'package:mappy_social/provider/app_repo.dart';
import 'package:mappy_social/provider/post_provider.dart';
import 'package:mappy_social/provider/user_provider.dart';
import 'package:mappy_social/styles/app_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AppRepo>(
          create: (context) => AppRepo(),
          child: MyApp(),
        ),
        ChangeNotifierProvider<PostProvider>(
          create: (context) => PostProvider(),
          child: MyApp(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
