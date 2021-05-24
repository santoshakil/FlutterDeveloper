import 'package:flutter/material.dart';
import 'package:flutter_developers/helpers/size_config/size_config.dart';
import 'package:flutter_developers/helpers/themes/themes.dart';

class KTabBar extends StatelessWidget {
  const KTabBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TabController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: ScreenSize.width * 0.18),
        controller: controller,
        isScrollable: true,
        labelColor: kPrimaryColor,
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: kPrimaryColor.withOpacity(0.7),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 0.7,
        ),
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 0.7,
        ),
        indicator: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        tabs: [
          Align(
            alignment: Alignment.center,
            child: Text('Part 1'),
          ),
          Align(
            alignment: Alignment.center,
            child: Text('Part 2'),
          ),
        ],
      ),
    );
  }
}
