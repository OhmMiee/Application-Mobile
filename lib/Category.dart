// import 'package:flutter/material.dart';

// class Category extends StatefulWidget {
//   const Category({Key? key}) : super(key: key);
//   Widget _textformFormfield(){
//     return Padding(
//       padding: EdgeInsets.only(right: 10),
//       child: TextFormField(
//         decoration: InputDecoration(
//           fillColor: Color(0xff3a3e3e),

//         ),
//       ))
//   }

//   @override
//   _CategoryState createState() => _CategoryState();
// }

// class _CategoryState extends State<Category> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff2b2b2b),
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Color(0xff2b2b2b),
//         leading: Icon(
//           Icons.sort,
//           size: 30,
//         ),
//         actions: [
//           Padding(
//             padding: EdgeInsets.all(9.0),
//             child: Center(
//               child: Container(
//                 child: CircleAvatar(
//                   maxRadius: 20,
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//       body: Container(
//         margin: EdgeInsets.only(
//           left: 14,
//         ),
//         child: ListView(
//           children: [
//             Container(
//               height: 820,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(top: 10),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Enjoy Your Meal With",
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.white54,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Text(
//                           "Your Favourite Food",
//                           style: TextStyle(
//                             fontSize: 23,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
