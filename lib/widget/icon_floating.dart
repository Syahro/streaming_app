import 'package:flutter/material.dart';
import 'package:streaming_app/theme.dart';

class IconFloating extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool isActive;

  IconFloating({
    this.imageUrl,
    this.title,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 17,
          height: 20,
          color: isActive ? yellowColor : lightGreyColor,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          title,
          style: semiBoldTextStyle.copyWith(
            fontSize: 10,
            color: isActive ? yellowColor : lightGreyColor,
          ),
        ),
      ],
    );
  }
}
