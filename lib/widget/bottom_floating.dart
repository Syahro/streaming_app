import 'package:flutter/material.dart';
import 'package:streaming_app/theme.dart';
import 'package:streaming_app/widget/icon_floating.dart';

class BottomFloating extends StatelessWidget {
  final bool isHome;
  final bool isExplore;
  final bool isAccount;

  BottomFloating({
    this.isHome,
    this.isExplore,
    this.isAccount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      width: double.infinity,
      color: backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 85),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconFloating(
            imageUrl: 'assets/home.png',
            title: 'Home',
            isActive: isHome,
          ),
          IconFloating(
            imageUrl: 'assets/explore.png',
            title: 'Explore',
            isActive: isExplore,
          ),
          IconFloating(
            imageUrl: 'assets/akun.png',
            title: 'You',
            isActive: isAccount,
          ),
        ],
      ),
    );
  }
}
