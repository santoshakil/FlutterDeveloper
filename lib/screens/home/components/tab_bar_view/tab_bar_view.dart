import 'package:flutter/material.dart';

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
          Center(child: Text('Part 1')),
          Center(child: Text('Part 2')),
        ],
      ),
    );
  }
}
