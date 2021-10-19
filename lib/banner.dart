import 'package:flutter/material.dart';

class Banners extends StatefulWidget {
  const Banners({Key? key}) : super(key: key);

  @override
  _BannersState createState() => _BannersState();
}

class _BannersState extends State<Banners> {

  final List<Widget> _banners = List.generate(
    3,
    (index) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Image.asset(
        'assets/images/vegs_banner.png',
        fit: BoxFit.fill,
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
          TabBarView(children: _banners),
         
        ],
      ),
    );
  }
}
