
import 'package:flutter/material.dart';
import 'package:onlinedating/search.dart';
import 'package:onlinedating/statu.dart';

import 'messages.dart';
import 'profile_page.dart';
// // import 'favorites_screen.dart';
// // import 'search_screen.dart';
// import 'messages_screen.dart';

import 'package:flutter/material.dart';
import 'package:onlinedating/search.dart';
import 'package:onlinedating/statu.dart';
import 'messages.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // List of screens/pages
  final List<Widget> _screens = [
    StatusPage(),
    // SearchPage(),
    MessagePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.undo_sharp),
                  color: Colors.white,
                  iconSize: 22,
                ),
                Text(
                  "xulasho",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ],
            ),
            Expanded(
              child: IndexedStack(
                index: _currentIndex,
                children: _screens,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black),
            label: 'Status',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.search, color: Colors.black),
          //   label: 'Search',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail, color: Colors.black),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}







// import 'package:flutter/material.dart';

// import 'profile_page.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _currentIndex = 0;
//   final List<Widget> _screens = [
//     // FavoritesScreen(),
//     StatusPage(),
//     SearchPage(),
//      MessagePage(),
//     ProfilePage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
      
//       body: SafeArea(child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//             IconButton(onPressed: (){}, icon: Icon(Icons.undo_sharp),color: Colors.white,iconSize: 22,),
//             Text("xulasho",style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),
//             IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.white,size: 22,)),
//           ],),
//           Expanded(child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
//             color: Colors.white,
            
//             ),
            
//           )),
//               Expanded(
//               child: IndexedStack(
//                 index: _currentIndex,
//                 children: _screens,
//               ),
//             ),

          

//         ],  
//       )),
      
//       bottomNavigationBar: BottomNavigationBar(
//        currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
          
//           BottomNavigationBarItem(
            
//             icon: IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.black)),
//             label: 'status',
            
//           ),
          
//           BottomNavigationBarItem(
//             icon: IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.black,)),
//             label: 'Search',
//           ),
          
//           // Add more items as needed
//           BottomNavigationBarItem(
//             icon: IconButton(onPressed: (){}, icon: Icon(Icons.mail,color: Colors.black),),
//             label: 'Messages',
//           ),
          
//           BottomNavigationBarItem(
//             icon: IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Colors.black),),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
