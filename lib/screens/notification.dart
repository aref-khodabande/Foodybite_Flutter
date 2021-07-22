import 'dart:io';
import 'package:flutter/material.dart';
import 'package:foodybite/widgets/trending_item.dart';


class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child:Scaffold(
      appBar:  AppBar(
        elevation: 0.0,
        title: Text('اعلان ها',style: TextStyle(fontFamily: 'Roboto'),),
        centerTitle: true,
      ),
        body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 10.0,
        ),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Container(

                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  elevation: 3.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 15.0,left: 15.0,top: 5.0,bottom: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ثبت ارسال",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Icon( Icons.notifications,color: Colors.blue,)
                              ],)
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0,left: 15.0,bottom: 15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "کاربر گرامی سفارش شما از رستوان ارکیده ارسال شد و تا دقایقی دیگر به دست شما خواهد رسید.",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Container(

                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  elevation: 3.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 15.0,left: 15.0,top: 5.0,bottom: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ثبت سفارش",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Icon( Icons.notifications,color: Colors.blue,)
                              ],)
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0,left: 15.0,bottom: 15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "کاربر گرامی سفارش شما از رستوان ارکیده ثبت شد.",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Container(

                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  elevation: 3.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 15.0,left: 15.0,top: 5.0,bottom: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "کیف پول",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Icon( Icons.notifications,color: Colors.green,)
                              ],)
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0,left: 15.0,bottom: 15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "کاربر گرامی مبلغ یک میلیون ریال به موجودی کیف پول شما افزوده شد .",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Container(

                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  elevation: 3.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 15.0,left: 15.0,top: 5.0,bottom: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "تخفیف",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Icon( Icons.notifications,color: Colors.green,)
                              ],)
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0,left: 15.0,bottom: 15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "برای اولین خرید و سفارش خود 35 درصد تخفیف دریافت کنید .",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Container(

                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  elevation: 3.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 15.0,left: 15.0,top: 5.0,bottom: 10.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "خوش آمدید",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                Icon( Icons.notifications,color: Colors.green,)
                              ],)
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0,left: 15.0,bottom: 15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "کاربر گرامی به اپلیکیشن رستوران من خوش آمدید .امیدواریم از خرید های خود لذت ببرید و با ما تجربه تکرار نشدنی در سفارش آنلاین غذا داشته باشید .",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),);
  }

}
