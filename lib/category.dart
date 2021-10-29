import 'package:flutter/material.dart';
import 'constant.dart';
import 'detail.dart';
import 'home.dart';

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
                      child: Image.asset(
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
                                  image: 'assets/images/latte.png',
                                  tittle: "tittle"),
                              _menu(
                                  image: 'assets/images/latte.png',
                                  tittle: "tittle"),
                              _menu(
                                  image: 'assets/images/latte.png',
                                  tittle: "tittle"),
                              _menu(
                                  image: 'assets/images/latte.png',
                                  tittle: "tittle")
                            ]))
                  ])))
        ])));
  }
}
