import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(

          child: Image.asset("assets/images/1.jpg"),
        
        ),
      ),

      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
