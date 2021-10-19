// import 'dart:html';
// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 30.0),
        child: Row(
          children: [
            Text(
              "Food Menu",
              style: TextStyle(
                  fontSize: 28, 
                  fontWeight: 
                  FontWeight.w800, 
                  color: darkColor),
            )
          ],
        ),
      ),
    );
  }
}
