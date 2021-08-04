import 'package:flutter/material.dart';
import 'package:streaming_app/theme.dart';
import 'package:streaming_app/widget/bottom_floating.dart';
import 'package:streaming_app/widget/top_movie_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: BottomFloating(
        isHome: true,
        isExplore: false,
        isAccount: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: defaultMargin,
                    top: 70,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Coming Soon',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 20,
                          color: semiBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/coming.png',
                          width: 360,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'A Quiet Place II',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 20,
                          color: semiBlackColor,
                        ),
                      ),
                      Text(
                        'April 2021',
                        style: mediumTextStyle.copyWith(
                          fontSize: 14,
                          color: lightGreyColor,
                        ),
                      ),
                      SizedBox(
                        height: defaultMargin,
                      ),
                      Text(
                        'Top Movies',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 20,
                          color: semiBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            TopMovieCard(
                              imageUrl: 'assets/top1.png',
                              name: 'Free Guy',
                              category: 'Comedy',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            TopMovieCard(
                              imageUrl: 'assets/top2.png',
                              name: 'The Dark Knight',
                              category: 'Action',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            TopMovieCard(
                              imageUrl: 'assets/top3.png',
                              name: 'Guns Akimbo',
                              category: 'Comedy',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            TopMovieCard(
                              imageUrl: 'assets/cover.png',
                              name: 'The Witcher 2021',
                              category: 'Sci-Fiction',
                            ),
                            SizedBox(
                              width: defaultMargin,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              color: backgroundColor,
              width: double.infinity,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/menu.png',
                        width: 18,
                        height: 14,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(22.5),
                        child: Image.asset(
                          'assets/user.png',
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
