import 'package:flutter/material.dart';
import 'package:rental/app/pages/home.dart';
import 'package:rental/app/sidebar/sidebar.dart';

class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Home(),
          SideBar(),
        ],
      ),
    );
  }
}
