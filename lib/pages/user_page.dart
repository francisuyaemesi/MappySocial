import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mappy_social/components/toolbar.dart';
import 'package:mappy_social/components/user_avatar.dart';

class UserPage extends StatelessWidget {
  final scrollController = ScrollController();
  UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: MyUserAppBar(
            offset: scrollController.hasClients ? scrollController.offset : 0,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              padding: const EdgeInsets.all(16),
              child: Text('This is test post'),
            ),
            childCount: 100,
          ),
        ),
      ],
    ));
  }
}

class MyUserAppBar extends StatelessWidget {
  final double offset;
  var expanded = true;
  MyUserAppBar({super.key, required this.offset});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final progress = offset / width;
    expanded = progress < 0.04;
    return AnimatedContainer(
      duration: Duration(microseconds: 200),
      // curve: Curves.bounceIn,
      width: double.infinity,
      height: width - (expanded ? 0 : width - 260),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            right: 0,
            left: 0,
            child: AnimatedContainer(
              duration: Duration(microseconds: 200),
              padding: EdgeInsets.only(
                  top: expanded
                      ? 0
                      : MediaQuery.of(context).viewPadding.top + 24),
              alignment: expanded ? null : Alignment.center,
              width: expanded ? width : 180,
              height: expanded ? width : 180,
              child: Image.asset(
                'assets/temp/user1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 24,
            bottom: 24,
            right: 24,
            child: AnimatedAlign(
              duration: Duration(milliseconds: 200),
              curve: Curves.fastOutSlowIn,
              alignment: expanded ? Alignment.centerLeft : Alignment.center,
              child: Column(
                children: [
                  Text(
                    'User name',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                    ),
                  ),
                  Text('Canada'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



// SliverAppBar(
//           pinned: true,
//           expandedHeight: MediaQuery.of(context).size.width,
//           flexibleSpace: FlexibleSpaceBar(
//             title: Text('User name'),
//             background: Image.asset(
//               'assets/temp/user1.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),