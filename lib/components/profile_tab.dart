import 'package:flutter/material.dart';

// stf 자동완성

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(),
        _buildTabBarView(),
      ],
    );
  }

  _buildTabBar() {
    return SizedBox();
  }

  _buildTabBarView() {
    return SizedBox();
  }
}

