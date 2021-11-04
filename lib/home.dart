// import 'dart:html';
// import 'dart:ui';

import 'package:final_project/main.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'detail.dart';
import 'category.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    


  Widget _textformField() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
              fillColor: Color(0xffDCDCDC),
              filled: true,
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(Icons.search, color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              )),
        ),
      ),
    );
  }

  Widget _menu({
    required String image,
    required String tittle,
  }) {
    return InkWell(
        onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Details(),
                ),
              );
        },
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                image,
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(-1, -0.25),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                child: Text(
                  tittle,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18),
                  // style: FlutterFlowTheme.bodyText1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                ),
              ),
            ),
          )
        ]));
  }

  Widget _allCategories({
    required String image,
    required String tittle,
  }) {
    return InkWell(
        onTap: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryPage(),
            ),
          );
        },
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                tittle,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ));
  }

  final List<String> imageList = [
    "assets/images/banner_1.jpg",
    "assets/images/banner_2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
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
                _textformField(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: CarouselSlider(
                      items: imageList
                          .map((e) => Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.8),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
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
                      )),
                )
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(26.0),
                //   child: Image.asset("assets/images/banner.jpg",),
                // )
                ,
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SizedBox(
                    child: Text(
                      "หมวดหมู่",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _allCategories(
                          image: 'assets/images/c_2.jpg',
                          tittle: 'อาหาร'),
                      _allCategories(
                          image: 'assets/images/c_1.jpg',
                          tittle: 'เครื่องดื่ม'),
                      _allCategories(
                          image: 'assets/images/c_3.jpg',
                          tittle: 'ของว่าง'),
                      _allCategories(
                          image: 'assets/images/c_4.jpg',
                          tittle: 'ของหวาน'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                  child: SizedBox(
                    child: Text(
                      "เมนูยอดนิยม",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _menu(
                          image: "assets/images/menu1.jpg",
                          tittle: "Title"),
                      _menu(
                          image: "assets/images/menu2.jpg",
                          tittle: "Title"),
                    ],
                  ),
                )
              ]),
        ));
  }
}
