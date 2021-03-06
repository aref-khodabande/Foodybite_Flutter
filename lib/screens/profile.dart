import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              height: 240,
              child: Stack(
                children: [
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(50)),
                      child: Image.asset(
                        "assets/food10.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60.0,
                    right: 120,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                      child: Container(
                        height: 150,
                        width: 150,
                        padding: EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(100.0),
                          ),
                          child: Image.asset(
                            "assets/cm1.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 6.0,
                    left: 6.0,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0)),
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.edit,
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),

            Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.money,
                    size: 24.0,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    '?????? ??????',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '?????????????? ???????? ?????? ???? ?????? ?????? ???????????????????? .',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 24,right: 89),
              child: Divider(color: Colors.black45,),
            ),
            Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.shopping_cart_outlined,
                    size: 24.0,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    '?????????????? ????????',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '???????? ?????????????? ???????? ?????? ?????? ???? ???????????? ???????????? .',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                )),    Padding(
              padding: EdgeInsets.only(left: 24,right: 89),
              child: Divider(color: Colors.black45,),
            ),
            Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),

                child: ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.vpn_key_outlined,
                    size: 24.0,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    '?????????? ??????',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '?????? ???????? ???????? ???????????? ???? ?????????? ???????? .',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                )),

            Padding(
              padding: EdgeInsets.only(left: 24,right: 89),
              child: Divider(color: Colors.black45,),
            ),
            Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListTile(
                  onTap: (){
                    Get.changeTheme(ThemeData.dark());
                  }
                  ,
                  dense: true,
                  leading: Icon(
                    Icons.wb_sunny_outlined,
                    size: 24.0,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    '?????????? ??????????',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '?????????? ???????? ?????? ?????? ???? ???????????? ???????????? .',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 24,right: 89),
              child: Divider(color: Colors.black45,),
            ),
            Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.file_copy_outlined,
                    size: 24.0,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    '????????????',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '???????????? ?????????????? ????.',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 24,right: 89),
              child: Divider(color: Colors.black45,),
            ),
            Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.info_outline,
                    size: 24.0,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    '???????????? ????',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '???????????? ???????????????? ?????????????? ???? .',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 24,right: 89),
              child: Divider(color: Colors.black45,),
            ),
            Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.contact_support_outlined,
                    size: 24.0,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    '????????????????',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '?????????????? ?????? ?????? ???? ???? ???? ???????????? ??????????????.',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 24,right: 89),
              child: Divider(color: Colors.black45,),
            ),
            Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.star_rate_outlined,
                    size: 24.0,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    '???? ???? ???????????? ????????',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '???? ???????????????? ???????????? ???????? ???? ???? ?????????????? ?????????? ?????????? ???? ?????????? ???????? .',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 24,right: 89),
              child: Divider(color: Colors.black45,),
            ),
            Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.phone_android,
                    size: 24.0,
                    color: Theme.of(context).accentColor,
                  ),
                  title: Text(
                    '???????? ????????????????',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '1.2.5',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
