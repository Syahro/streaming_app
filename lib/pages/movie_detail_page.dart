import 'package:flutter/material.dart';
import 'package:streaming_app/theme.dart';
import 'package:streaming_app/widget/cast_card.dart';

class MovieDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 440,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/cover.png',
                        width: double.infinity,
                        height: 440,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 440,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            backgroundColor,
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: defaultMargin,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'The Witcher 2021',
                      style: semiBoldTextStyle.copyWith(
                        fontSize: 30,
                        color: semiBlackColor,
                      ),
                    ),
                    Text(
                      'Sci-Fiction',
                      style: mediumTextStyle.copyWith(
                        fontSize: 14,
                        color: lightGreyColor,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: yellowColor,
                          size: 20,
                        ),
                        Icon(
                          Icons.star_half,
                          color: yellowColor,
                          size: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultMargin,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: yellowColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: backgroundColor,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: darkGreyColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: backgroundColor,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: defaultMargin,
                    left: defaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cast',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 20,
                          color: semiBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CastCard(
                              imageUrl: 'assets/cast1.png',
                              name: 'Henry Cavill',
                              actor: 'Geralt',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            CastCard(
                              imageUrl: 'assets/cast2.png',
                              name: 'Freeya Alan',
                              actor: 'Ciri',
                            ),
                            SizedBox(
                              width: defaultMargin,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              height: 30,
              width: 30,
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Icon(
                  Icons.chevron_left,
                  color: semiBlackColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
