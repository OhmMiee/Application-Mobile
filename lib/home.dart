// import 'dart:html';
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'constant.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageList = [
    "assets/images/banner.jpg",
    "assets/images/1.jpg",
    "assets/images/2.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 70.0, left: 20.0, right: 20.0, bottom: 20.0),
            child: Row(
              children: [
                Text(
                  "Food Menu",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: darkColor),
                ),
              ],
            ),
          ),
          CarouselSlider(
              items: imageList
                  .map((e) => Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),

                          ],
                            borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Image.asset(
                                  e,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            )),
                      ))
                  .toList(),
              options: CarouselOptions(
                height: 170,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: true,
              ))
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(26.0),
          //   child: Image.asset("assets/images/banner.jpg",),
          // )
        ],
      ),
    );
  }
}
