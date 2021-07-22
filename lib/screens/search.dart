import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodybite/util/restaurants.dart';
import 'package:foodybite/widgets/search_card.dart';
import 'package:foodybite/widgets/trending_item.dart';


class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child:Scaffold(
      appBar:  buildSearchBar( context),
        body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 10.0,
        ),
        child: ListView(
          children: <Widget>[

            SizedBox(height: 10.0),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:  0 ,
              itemBuilder: (BuildContext context, int index) {
                Map restaurant = restaurants[index];
                return TrendingItem(
                  img: restaurant["img"],
                  title: restaurant["title"],
                  address: restaurant["address"],
                  rating: restaurant["rating"],
                );
              },
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
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
}
