import 'package:flutter/material.dart';
import 'package:flutter_developers/helpers/size_config/size_config.dart';

import 'tab_bar/tab_bar.dart';
import 'tab_bar_view/tab_bar_view.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height,
      width: ScreenSize.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          KTabBar(controller: controller),
          KTabBarView(controller: controller),
        ],
      ),
    );
  }
}
