import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widgets/ongoing_card.dart';
import 'package:travel_app/widgets/popular_card.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categoryIndex = 0;
 

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          right: 30,
          left: 30,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/image_profile.png',
              width: 50,
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Bimo',
                  style: poppins.copyWith(
                    color: whiteColor,
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Good Morning',
                  style: poppins.copyWith(
                    color: greyColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/icon_search.png',
              width: 20,
            ),
          ],
        ),
      );
    }

    Widget slogan() {
      return Container(
        margin: EdgeInsets.only(
          top: 25,
          left: 30,
          right: 30,
        ),
        child: Text(
          'Let\'s enjoy your \nVacation',
          style: poppins.copyWith(
            color: whiteColor,
            fontWeight: bold,
            fontSize: 24,
          ),
        ),
      );
    }

    Widget categoriesList() {
      // Widget Constructor untuk category list
      Widget categories({text, index}) {
        return GestureDetector(
          onTap: () {
            setState(() {
              categoryIndex = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: poppins.copyWith(
                    color: categoryIndex == index ? yellowColor : greyColor,
                    fontWeight: semibold,
                    fontSize: 12,
                  ),
                ),
                Container(
                  width: 12,
                  height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: categoryIndex == index
                        ? yellowColor
                        : Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 25,
          left: 30,
          right: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              categories(
                text: 'All',
                index: 0,
              ),
              categories(
                text: 'Asia',
                index: 1,
              ),
              categories(
                text: 'America',
                index: 2,
              ),
              categories(
                text: 'Africa',
                index: 3,
              ),
              categories(
                text: 'Europe',
                index: 4,
              ),
              categories(
                text: 'North',
                index: 5,
              ),
            ],
          ),
        ),
      );
    }

    Widget popularTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 36,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Countries',
              style: poppins.copyWith(
                color: whiteColor,
                fontSize: 18,
                fontWeight: semibold,
              ),
            ),
            Text(
              'See All',
              style: poppins.copyWith(
                color: greyColor2,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularCountries() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 30),
              PopularCard(
                imageUrl: 'assets/image_bali.png',
                text: 'Bali',
                isFavorite: true,
              ),
              PopularCard(
                imageUrl: 'assets/image_paris.png',
                text: 'Paris',
                isFavorite: false,
              ),
              PopularCard(
                imageUrl: 'assets/image_england.png',
                text: 'England',
                isFavorite: false,
              ),
            ],
          ),
        ),
      );
    }

    Widget ongoingTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 36,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ongoing Events',
              style: poppins.copyWith(
                color: whiteColor,
                fontSize: 18,
                fontWeight: semibold,
              ),
            ),
            Text(
              'See All',
              style: poppins.copyWith(
                color: greyColor2,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget ongoingEvents() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 30),
              OngoingCard(
                imageUrl: 'assets/image_brazil.png',
                city: 'Rio Carnival, Rio\nde Janiro',
                country: 'Brazil',
              ),
              OngoingCard(
                imageUrl: 'assets/image_japanese.png',
                city: 'Sapporo Snow\nFestival',
                country: 'Japan',
              ),
            ],
          ),
        ),
      );
    }

    Widget customBottomNav() {
      return Container(
        child: BottomNavigationBar(
          backgroundColor: bgColor2,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  left: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/icon_home.png',
                      width: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Home',
                      style: poppins.copyWith(
                        color: yellowColor,
                        fontWeight: semibold,
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_notif.png',
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_menu.png',
                  width: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/icon_setting.png',
                  width: 20,
                ),
              ),
              label: '',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: customBottomNav(),
      body: ListView(
        children: [
          header(),
          slogan(),
          categoriesList(),
          popularTitle(),
          popularCountries(),
          ongoingTitle(),
          ongoingEvents(),
        ],
      ),
    );
  }
}
