import 'package:flutter/material.dart';
import 'package:streaming_app/pages/movie_detail_page.dart';
import 'package:streaming_app/theme.dart';

class TopMovieCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String category;

  TopMovieCard({
    this.imageUrl,
    this.name,
    this.category,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return MovieDetailPage();
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imageUrl,
              width: 120,
              height: 190,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            name,
            style: boldTextStyle.copyWith(
              fontSize: 16,
              color: semiBlackColor,
            ),
          ),
          Text(
            category,
            style: regularTextStyle.copyWith(
              fontSize: 14,
              color: lightGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
