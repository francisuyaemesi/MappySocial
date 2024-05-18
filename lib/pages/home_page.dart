import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mappy_social/components/post_item.dart';
import 'package:mappy_social/components/toolbar.dart';
import 'package:mappy_social/config/app_routes.dart';
import 'package:mappy_social/config/app_strings.dart';
import 'package:mappy_social/provider/post_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<PostProvider>().getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.appName,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.nearby);
            },
            icon: SvgPicture.asset(
              'assets/svg/location_icon.svg',
            ),
          ),
        ],
      ),
      body: Consumer<PostProvider>(
        builder: (context, value, child) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return PostItem(
                post: value.list[index],
              );
            },
            itemCount: value.list.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 24,
              );
            },
          );
        },
      ),
    );
  }
}
