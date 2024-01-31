import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {

  @override
  _DashboardScreen createState() => _DashboardScreen();

}
class _DashboardScreen extends State<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // ... your existing code

    return Scaffold(
      appBar: AppBar(
        // ... your existing app bar
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text('Delicious\nFood for you', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  onChanged: (value) {
                    // Handle search logic here
                    print('Search query: $value');
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search, size: 35, color: Colors.black,),
                    hintText: 'Search for delicious food...',
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 300,
                child: DefaultTabController(
                  length: 4,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(text: 'Food'),
                          Tab(text: 'Drinks'),
                          Tab(text: 'Snacks'),
                          Tab(text: 'Chinese'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                              color: Colors.red,
                              child: Center(
                                child: Text('Food Content'),
                              ),
                            ),
                            Container(
                              color: Colors.blue,
                              child: Center(
                                child: Text('Drinks Content'),
                              ),
                            ),
                            Container(
                              color: Colors.green,
                              child: Center(
                                child: Text('Snacks Content'),
                              ),
                            ),
                            Container(
                              color: Colors.orange,
                              child: Center(
                                child: Text('Chinese Content'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// class _DashboardScreen extends State<DashboardScreen> {
//
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//
//     List<String> dishNames = [
//       'bbq',
//       'bbq_sandwich',
//       'bbqwings',
//       'bbqchiburger'
//           'bbq',
//       'bbq_sandwich',
//       'bbqwings',
//       'bbqchiburger',
//       'bbq',
//       'bbq_sandwich',
//       'bbqwings',
//       'bbqchiburger'
//           'bbq',
//       'bbq_sandwich',
//       'bbqwings',
//       'bbqchiburger',
//     ];
//
//     List<String> dishImages = [
//       'assets/images/image.png',
//       'assets/images/log2.png',
//       'assets/images/logo.png',
//       'assets/images/logo.png',
//       'assets/images/image.png',
//       'assets/images/log2.png',
//       'assets/images/logo.png',
//       'assets/images/logo.png',
//       'assets/images/image.png',
//       'assets/images/log2.png',
//       'assets/images/logo.png',
//       'assets/images/logo.png',
//       'assets/images/image.png',
//       'assets/images/log2.png',
//       'assets/images/logo.png',
//       'assets/images/logo.png',
//     ];
//
//     List<int> dishPrices = [
//       45,
//       56,
//       67,
//       78,
//       45,
//       56,
//       67,
//       78,
//       45,
//       56,
//       67,
//       78,
//       45,
//       56,
//       67,
//       78,
//     ];
//
//     String searchText;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white70,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16) , bottomRight: Radius.circular(10))
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {
//               print('Search Icon Pressed');
//             },
//           ),
//
//
//         ],
//
//       ),
//       drawer: Drawer(),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Cart',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//       body: SafeArea(
//
//         child: Container(
//           margin:
//           EdgeInsets.symmetric(horizontal: 10),
//           child: Column(
//
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//
//             children: [
//               SizedBox(height: 10,),
//
//
//
//               Text('Delicious\nFood for you' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
//
//
//               SizedBox(height: 10,),
//               Container(
//
//                 padding: EdgeInsets.only(left: 10),
//              decoration: BoxDecoration(
//                                 color: Colors.white,
//
//                shape: BoxShape.rectangle
//                    ,borderRadius: BorderRadius.circular(32),
//
//              ),
//                 child: TextField(
//                   onChanged: (value) {
//                     // Handle search logic here
//                     // You can filter the data or perform any other actions based on the search text
//                     print('Search query: $value');
//                   },
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     icon: Icon(Icons.search ,size:35,color: Colors.black,),
//                     hintText: 'Search for delicious food...',
//                   ),
//                 ),
//
//
//               ),
//
//               SizedBox(height: 30,),
//
//
//
//               Container(
//                 height: 300,
//                 child:
//
//                 DefaultTabController(
//                   length: 4,
//                   child: Column(
//                     children: [
//                       TabBar(
//                         tabs: [
//                           Tab(text: 'Food'),
//                           Tab(text: 'Drinks'),
//                           Tab(text: 'Snacks'),
//                           Tab(text: 'Chinese'),
//                         ],
//                       ),
//                       // Content for each tab
//                       Expanded(
//                         child: TabBarView(
//                           children: [
//                             // Content for 'Food' tab
//                             Container(
//                               color: Colors.red,
//                               child: Center(
//                                 child: Text('Food Content'),
//                               ),
//                             ),
//                             // Content for 'Drinks' tab
//                             Container(
//                               color: Colors.blue,
//                               child: Center(
//                                 child: Text('Drinks Content'),
//                               ),
//                             ),
//                             // Content for 'Snacks' tab
//                             Container(
//                               color: Colors.green,
//                               child: Center(
//                                 child: Text('Snacks Content'),
//                               ),
//                             ),
//                             // Content for 'Chinese' tab
//                             Container(
//                               color: Colors.orange,
//                               child: Center(
//                                 child: Text('Chinese Content'),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//
//
//
//
//                 // DefaultTabController(
//                 //   length: 4, child: TabBar(
//                 //
//                 //   tabs: [
//                 //
//                 //     Tab(text: 'Food',),
//                 //     Tab(text: 'Drinks',),
//                 //     Tab(text: 'Snacks',),
//                 //     Tab(text: 'Chineese',),
//                 //   ],
//                 // ),
//                 //
//                 //
//                 //
//                 // ),
//
//               ),
//
//
//
//
//
//
//
//
//
//   ])
//         ),
//       ),
//       // body: Container(
//       //
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.start,
//       //     children: [
//       //       Container(
//       //         alignment: Alignment.topLeft,
//       //         margin: EdgeInsets.only(top: 16, left: 12, bottom: 6),
//       //         child: Text(
//       //           'Delicious\nfood for you',
//       //           style: TextStyle(
//       //             height: 1,
//       //             fontWeight: FontWeight.w500,
//       //             fontSize: 30,
//       //             color: Colors.white,
//       //           ),
//       //         ),
//       //       ),
//       //       Container(
//       //         margin: EdgeInsets.all(12),
//       //         child: TextField(
//       //           decoration: InputDecoration(
//       //             hintText: 'Search...',
//       //             border: OutlineInputBorder(
//       //               borderRadius: BorderRadius.circular(20),
//       //             ),
//       //           ),
//       //           onChanged: (value) {
//       //             searchText = value;
//       //           },
//       //         ),
//       //       ),
//       //       DefaultTabController(
//       //         length: 5,
//       //         child: Column(
//       //           children: [
//       //             Container(
//       //               child: TabBar(
//       //                 isScrollable: true,
//       //                 tabAlignment: TabAlignment.center,
//       //                 indicatorSize: TabBarIndicatorSize.tab,
//       //                 indicatorWeight: 4,
//       //                 labelStyle: TextStyle(
//       //                   fontSize: 16,
//       //                   color: Colors.black,
//       //                   fontWeight: FontWeight.bold,
//       //                 ),
//       //                 tabs: [
//       //                   Tab(text: 'Food 1'),
//       //                   Tab(text: 'Food 2'),
//       //                   Tab(text: 'Food 3'),
//       //                   Tab(text: 'Food 4'),
//       //                   Tab(text: 'Food 5'),
//       //                 ],
//       //               ),
//       //             ),
//       //
//       //             Container(
//       //
//       //               color: Colors.red,
//       //               child: TabBarView(
//       //                 children: [
//       //                   SingleChildScrollView(
//       //                     child: Container(
//       //                       color: Colors.orange,
//       //                     ),
//       //                   ),
//       //                   Container(
//       //                     color: Colors.red,
//       //                   ),
//       //                   Container(
//       //                     color: Colors.red,
//       //                   ),
//       //                   Container(
//       //                     color: Colors.red,
//       //                   ),
//       //                   Container(
//       //                     color: Colors.red,
//       //                   ),
//       //                 ],
//       //               ),
//       //             )
//       //
//       //
//       //             // TabBarView(
//       //             //   children: [
//       //             //     SingleChildScrollView(
//       //             //         child: Container(
//       //             //             padding: EdgeInsets.all(4),
//       //             //             margin: EdgeInsets.all(8),
//       //             //             alignment: Alignment.topLeft,
//       //             //             color: Colors.purple,
//       //             //             child: Column(
//       //             //               mainAxisAlignment: MainAxisAlignment.start,
//       //             //               children: [
//       //             //                 ListView.builder(
//       //             //                     shrinkWrap: true,
//       //             //                     itemCount: dishPrices.length,
//       //             //                     itemBuilder: (context, index) {
//       //             //                       return ListTile(
//       //             //                         title: Text(dishNames[index]),
//       //             //                         subtitle:
//       //             //                             Text('\$${dishPrices[index]}'),
//       //             //                         leading: Image.asset(
//       //             //                           dishImages[index],
//       //             //                           width: 40,
//       //             //                           height: 40,
//       //             //                         ),
//       //             //                       );
//       //             //                     }),
//       //             //               ],
//       //             //             ))),
//       //             //     SingleChildScrollView(
//       //             //         child: Container(
//       //             //             padding: EdgeInsets.all(4),
//       //             //             margin: EdgeInsets.all(8),
//       //             //             alignment: Alignment.topLeft,
//       //             //             color: Colors.pink,
//       //             //             child: Column(
//       //             //               mainAxisAlignment: MainAxisAlignment.start,
//       //             //               children: [
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //               ],
//       //             //             ))),
//       //             //     SingleChildScrollView(
//       //             //         child: Container(
//       //             //             padding: EdgeInsets.all(4),
//       //             //             margin: EdgeInsets.all(8),
//       //             //             alignment: Alignment.topLeft,
//       //             //             color: Colors.yellow,
//       //             //             child: Column(
//       //             //               mainAxisAlignment: MainAxisAlignment.start,
//       //             //               children: [
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //               ],
//       //             //             ))),
//       //             //     SingleChildScrollView(
//       //             //         child: Container(
//       //             //             padding: EdgeInsets.all(4),
//       //             //             margin: EdgeInsets.all(8),
//       //             //             alignment: Alignment.topLeft,
//       //             //             color: Colors.blue,
//       //             //             child: Column(
//       //             //               mainAxisAlignment: MainAxisAlignment.start,
//       //             //               children: [
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //               ],
//       //             //             ))),
//       //             //     SingleChildScrollView(
//       //             //         child: Container(
//       //             //             padding: EdgeInsets.all(4),
//       //             //             margin: EdgeInsets.all(8),
//       //             //             alignment: Alignment.topLeft,
//       //             //             color: Colors.orange,
//       //             //             child: Column(
//       //             //               mainAxisAlignment: MainAxisAlignment.start,
//       //             //               children: [
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //                 Text('Tab 1 Content'),
//       //             //               ],
//       //             //             ))),
//       //             //   ],
//       //           //  ),
//       //           ],
//       //         ),
//       //       )
//       //     ],
//       //   ),
//       //   color: Colors.orange,
//       // ),
//     );
//   }
// }
