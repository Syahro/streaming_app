import 'package:flutter/material.dart';
import 'package:streaming_app/theme.dart';

class CastCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String actor;

  CastCard({
    this.imageUrl,
    this.name,
    this.actor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 186,
      padding: EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0XFFF1F1F1),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: semiBoldTextStyle.copyWith(
                  fontSize: 14,
                  color: semiBlackColor,
                ),
              ),
              Text(
                actor,
                style: mediumTextStyle.copyWith(
                  fontSize: 14,
                  color: lightGreyColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
