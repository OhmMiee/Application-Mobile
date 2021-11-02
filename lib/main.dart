import 'package:final_project/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Welcome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         TextButton(
    //           style: ButtonStyle(
    //             foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    //           ),
    //           onPressed: () {
    //             Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()),);
    //           },
    //           child: Text('TextButton'),
    //         )
    //       ],
    //     ),
    //   ), // This trailing comma makes auto-formatting nicer for build methods.
    // );
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/welcome.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
//ข้อความ Phayao Cafe
          Padding(
            padding: EdgeInsets.only(top: 100),
            child: Align(
              alignment: Alignment.topCenter,
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
            ),
          ),

          //Bottom
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }),
                  );
                  Color:
                  Colors.black;
                },
                icon: Icon(Icons.open_in_new_rounded),
                label: Text(
                  "Welcome",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
