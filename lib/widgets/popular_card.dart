import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class PopularCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  bool isFavorite = false;

  PopularCard(
      {required this.imageUrl, required this.text, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        margin: EdgeInsets.only(right: 20),
        width: 120,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: greyColor,
        ),
        child: Stack(
          children: [
            Image.asset(
              imageUrl,
            ),
            isFavorite
                ? Positioned(
                    right: 0,
                    child: Image.asset(
                      'assets/icon_favorite.png',
                      width: 64,
                    ),
                  )
                : SizedBox(),
            Positioned(
              bottom: 0,
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                  color: yellowColor,
                ),
                child: Center(
                  child: Text(
                    text,
                    style: poppins.copyWith(
                      color: blackColor,
                      fontWeight: medium,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
