import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class OngoingCard extends StatelessWidget {
  final String imageUrl;
  final String city;
  final String country;

  OngoingCard(
      {required this.imageUrl, required this.city, required this.country});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        right: 30,
        bottom: 30,
      ),
      child: Stack(
        children: [
          Image.asset(
            imageUrl,
            width: 230,
            height: 205,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  city,
                  style: poppins.copyWith(
                    color: whiteColor,
                    fontWeight: bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: whiteColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      country,
                      style: poppins.copyWith(
                        color: whiteColor,
                        fontWeight: semibold,
                      ),
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
}
