import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodybite/screens/categories.dart';
import 'package:foodybite/screens/trending.dart';
import 'package:foodybite/util/categories.dart';
import 'package:foodybite/util/friends.dart';
import 'package:foodybite/util/restaurants.dart';
import 'package:foodybite/widgets/category_item.dart';
import 'package:foodybite/widgets/search_card.dart';
import 'package:foodybite/widgets/slide_item.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child:Scaffold(

      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[

            SizedBox(height: 20.0),
            buildCategoryRow('دسته بندی', context),
            SizedBox(height: 10.0),
            buildCategoryList(context),
            SizedBox(height: 10.0),
            buildRestaurantRow('رستوران های پربازدید', context),
            SizedBox(height: 10.0),
            buildRestaurantList(context),
            SizedBox(height: 10.0),
            buildRestaurantRow('محبوب ترین رستوران ها', context),
            SizedBox(height: 10.0),
            buildRestauranttList(context),

            SizedBox(height: 50.0),

          ],
        ),
      ),
    ),);
  }

  buildRestaurantRow(String restaurant, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "$restaurant",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        FlatButton(
          child: Text(
            "نمایش همه",
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Trending();
                },
              ),
            );
          },
        ),
      ],
    ),);
  }

  buildCategoryRow(String category, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "$category",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        FlatButton(
          child: Text(
            "نمایش همه",
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Categories();
                },
              ),
            );
          },
        ),
      ],
    ),);
  }

  buildSearchBar(BuildContext context) {
    return PreferredSize(
      child: Padding(
        padding: EdgeInsets.only(
          top: Platform.isAndroid ? 30.0 : 50.0,
          left: 10.0,
          right: 10.0,
        ),
        child: SearchCard(),
      ),
      preferredSize: Size(
        MediaQuery.of(context).size.width,
        60.0,
      ),
    );
  }

  buildCategoryList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
        primary: false,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories == null ? 0 : categories.length,
        itemBuilder: (BuildContext context, int index) {
          Map cat = categories[index];

          return CategoryItem(
            cat: cat,
          );
        },
      ),
    );
  }

  buildRestaurantList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants == null ? 0 : restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          Map restaurant = restaurants[index];

          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SlideItem(
              img: restaurant["img"],
              title: restaurant["title"],
              address: restaurant["address"],
              rating: restaurant["rating"],
            ),
          );
        },
      ),
    );
  }
  buildRestauranttList(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants1 == null ? 0 : restaurants1.length,
        itemBuilder: (BuildContext context, int index) {
          Map restaurant = restaurants1[index];

          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SlideItem(
              img: restaurant["img"],
              title: restaurant["title"],
              address: restaurant["address"],
              rating: restaurant["rating"],
            ),
          );
        },
      ),
    );
  }
  buildFriendsList(BuildContext context) {
    return PreferredSize(
      child: Padding(
        padding: EdgeInsets.only(
          top: Platform.isAndroid ? 40.0 : 50.0,
          left: 10.0,
          right: 10.0,
        ),
        child: ListView.builder(
          primary: false,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: friends == null ? 0 : friends.length,
          itemBuilder: (BuildContext context, int index) {
            String img = friends[index];

            return Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  img,
                ),
                radius: 25.0,
              ),
            );
          },
        ),
      ),
      preferredSize: Size(
        MediaQuery.of(context).size.width,
        70.0,
      ),
    );
  }

}
