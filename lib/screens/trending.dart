import 'package:flutter/material.dart';
import 'package:foodybite/util/restaurants.dart';
import 'package:foodybite/widgets/search_card.dart';
import 'package:foodybite/widgets/trending_item.dart';


class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child:Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("رستوران های پربازدید",style: TextStyle(fontFamily: 'Roboto'),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 10.0,
        ),
        child: ListView(
          children: <Widget>[
            SearchCard(),
            SizedBox(height: 10.0),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: restaurants == null ? 0 : restaurants.length,
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
}
