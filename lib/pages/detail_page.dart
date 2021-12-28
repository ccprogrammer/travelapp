import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget detailIcon({imageUrl, text}) {
      return Container(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: whiteColor,
              ),
              child: Image.asset(
                imageUrl,
                width: 20,
              ),
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: poppins.copyWith(
                fontWeight: semibold,
                color: whiteColor,
              ),
            ),
          ],
        ),
      );
    }

    Widget headerBody() {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Header Image
            Stack(
              children: [
                Image.asset(
                  'assets/image_bali2.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    left: 30,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/icon_chevron_left.png',
                      width: 13,
                    ),
                  ),
                ),
              ],
            ),

            // Title
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 30,
                left: 30,
                right: 30,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bali, Indonesia',
                    style: poppins.copyWith(
                      color: yellowColor,
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      detailIcon(
                        imageUrl: 'assets/icon_star.png',
                        text: '4.92',
                      ),
                      detailIcon(
                        imageUrl: 'assets/icon_cloud.png',
                        text: '27\'c',
                      ),
                      detailIcon(
                        imageUrl: 'assets/icon_aeroplane.png',
                        text: '9 jan',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget description() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
          bottom: 40,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: poppins.copyWith(
                color: whiteColor,
                fontWeight: semibold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Bali is famous for beaches, countless waves for surfing scuba diving, natiral sites to visit and  explore tremely fascinating Hindus culture with colorfuls ceremonies and magnificent temples gifted artists the producing.',
              style: poppins.copyWith(
                color: greyColor,
                fontSize: 13,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 80,
        color: bgColor,
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Starting From',
                  style: poppins.copyWith(
                    color: whiteColor,
                    fontSize: 13,
                  ),
                ),
                Text(
                  '\$500 - 750',
                  style: poppins.copyWith(
                    color: yellowColor,
                    fontWeight: semibold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 35,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: yellowColor,
              ),
              child: Text(
                'Book Now',
                style: poppins.copyWith(
                  color: whiteColor,
                  fontWeight: semibold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor2,
      bottomNavigationBar: customBottomNav(),
      body: ListView(
        children: [
          headerBody(),
          description(),
        ],
      ),
    );
  }
}
