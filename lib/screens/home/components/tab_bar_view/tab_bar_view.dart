import 'package:flutter/material.dart';
import 'package:flutter_developers/screens/community/community.dart';
import 'package:flutter_developers/screens/jobs/jobs.dart';

class KTabBarView extends StatelessWidget {
  const KTabBarView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabController? controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: controller,
        children: [
          JobsContainer(),
          CommunityContainer(),
        ],
      ),
    );
  }
}
