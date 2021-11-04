import 'package:flutter/material.dart';
import 'constant.dart';
import 'detail.dart';
import 'home.dart';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Widget _menu({
    required String image,
    required String tittle,
  }) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Details(),
            ),
          );
        },
        child: Align(
            alignment: AlignmentDirectional(0.78, -0.63),
            child: Container(
                width: 150,
                height: 190,
                decoration: BoxDecoration(
                  color: Color(0xFFFFF7EE),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(children: [
                  Align(
                    alignment: AlignmentDirectional(-0.62, 0.87),
                    child: Text(
                      tittle,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.05, -1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.network(
                        image,
                        width: 200,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ]))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xFFEE8100),
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30, 20, 20, 20),
            child: Text(
              'เครื่องดื่ม',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Align(
              alignment: AlignmentDirectional(0, 0.05),
              child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                  child:
                      Stack(alignment: AlignmentDirectional(0, 0), children: [
                    Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 15,
                              childAspectRatio: 1,
                            ),
                            scrollDirection: Axis.vertical,
                            children: [
                              _menu(
                                  image: 'https://firebasestorage.googleapis.com/v0/b/food-f71b8.appspot.com/o/604270a2421922184c72a510ff54675e.jpg?alt=media&token=c5b64cec-e8b7-4971-b532-85273ac52c00',
                                  tittle: "ชามะนาว"),
                              _menu(
                                  image: 'https://firebasestorage.googleapis.com/v0/b/food-f71b8.appspot.com/o/31503fd0f543fc98dfe556abb986ea5c.jpg?alt=media&token=6a8395b1-c823-4c94-b889-6b15bb2085da',
                                  tittle: "กีวี่โซดา"),
                              _menu(
                                  image: 'https://firebasestorage.googleapis.com/v0/b/food-f71b8.appspot.com/o/6012b26ce662e2e6cfcffb65f14a9146.jpg?alt=media&token=78d3d387-1da9-47f0-badb-bfc35d50583f',
                                  tittle: "ส้มโซดา"),
                              _menu(
                                  image: 'https://firebasestorage.googleapis.com/v0/b/food-f71b8.appspot.com/o/140abac0d3172a43ab5378a3e5c7eb99.jpg?alt=media&token=86fea632-1fc2-4a43-ad52-35d4f56d0005',
                                  tittle: "ชาเขียว")
                            ]))
                  ])))
        ])));
  }
}
