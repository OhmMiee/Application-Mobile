import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Text(
            "Phayao Cafe",
            style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.combine(
                  [TextDecoration.underline, TextDecoration.overline],
                ),
                shadows: [
                  Shadow(
                      color: Colors.white,
                      blurRadius: 2.0,
                      offset: Offset(4, 1)),
                ]),
          ),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border:
                  Border.all(width: 4, color: Color.fromARGB(0, 100, 100, 100)),
              color: Color.fromARGB(0, 255, 255, 255),
              image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"), fit: BoxFit.cover)),
        ),
      ),
    );
  }

  // @override
  // Widget bottoms(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Column(
  //         children: [ElevatedButton(onPressed: () {}, child: Text("Wellcom"))],
  //       ),
  //     ),
  //   );
  // }
}
