// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
//
// void main() {
//   debugPaintSizeEnabled = false; // Set to true for visual layout
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const showCard = false; // Set to false to show Stack
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter layout demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flutter layout demo'),
//         ),
//         body: Center(child: showCard ? _buildCard() : _buildStack()),
//       ),
//     );
//   }
//
//   // #docregion Card
//   Widget _buildCard() {
//     return SizedBox(
//       height: 250,
//       child: Card(
//         child: Column(
//           children: [
//             ListTile(
//               title: const Text(
//                 '1625 Main Street',
//                 style: TextStyle(fontWeight: FontWeight.w500),
//               ),
//               subtitle: const Text('My City, CA 99984'),
//               leading: Icon(
//                 Icons.restaurant_menu,
//                 color: Colors.blue[500],
//               ),
//             ),
//             const Divider(color: Colors.red),
//             ListTile(
//               title: const Text(
//                 '(408) 555-1212',
//                 style: TextStyle(fontWeight: FontWeight.w500),
//               ),
//               leading: Icon(
//                 Icons.contact_phone,
//                 color: Colors.blue[500],
//               ),
//             ),
//             ListTile(
//               title: const Text('costa@example.com'),
//               leading: Icon(
//                 Icons.contact_mail,
//                 color: Colors.blue[500],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // #enddocregion Card
//
//   // #docregion Stack
//   Widget _buildStack() {
//     return Stack(
//       alignment:const Alignment(0.6, 0.6),
//       children: [
//         const CircleAvatar(
//           backgroundImage: NetworkImage(
//               'https://cdn.pixabay.com/photo/2020/03/31/06/28/goldfinch-4986437_960_720.jpg'),
//           radius: 100,
//         ),
//         Container(
//           decoration: const BoxDecoration(
//             color: Colors.transparent,
//           ),
//           child: const Text(
//             'Mia B',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// // #enddocregion Stack
// }
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          //alignment: const Alignment(0.09, 0.8),
          children: [
            const CircleAvatar(
              maxRadius: 80,
              minRadius: 30,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2020/03/31/06/28/goldfinch-4986437_960_720.jpg'),
            ),
            Container(
              color: Colors.transparent,
              child: const Text(
                'Hi',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Container(
            // //   alignment: Alignment.topCenter,
            //   color: Colors.red,
            //   child: const Text(
            //     'Hello',
            //     style: TextStyle(
            //      // color: Colors.blue,
            //       fontSize: 25.0,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
