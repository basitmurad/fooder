import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreen createState() => _DashboardScreen();
}

class _DashboardScreen extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    List<String> dishNames = [
      'bbq',
      'bbq_sandwich',
      'bbqwings',
      'bbqchiburger'
          'bbq',
      'bbq_sandwich',
      'bbqwings',
      'bbqchiburger',
      'bbq',
      'bbq_sandwich',
      'bbqwings',
      'bbqchiburger'
          'bbq',
      'bbq_sandwich',
      'bbqwings',
      'bbqchiburger',
    ];

    List<String> dishImages = [
      'assets/images/image.png',
      'assets/images/log2.png',
      'assets/images/logo.png',
      'assets/images/logo.png',
      'assets/images/image.png',
      'assets/images/log2.png',
      'assets/images/logo.png',
      'assets/images/logo.png',
      'assets/images/image.png',
      'assets/images/log2.png',
      'assets/images/logo.png',
      'assets/images/logo.png',
      'assets/images/image.png',
      'assets/images/log2.png',
      'assets/images/logo.png',
      'assets/images/logo.png',
    ];

    List<int> dishPrices = [
      45,
      56,
      67,
      78,
      45,
      56,
      67,
      78,
      45,
      56,
      67,
      78,
      45,
      56,
      67,
      78,
    ];

    String searchText;
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search Icon Pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print('Settings Icon Pressed');
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 16, left: 12, bottom: 6),
              child: Text(
                'Delicious\nfood for you',
                style: TextStyle(
                  height: 1,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onChanged: (value) {
                  searchText = value;
                },
              ),
            ),
            DefaultTabController(
              length: 5,
              child: Column(
                children: [
                  Container(
                    child: TabBar(
                      isScrollable: true,
                      tabAlignment: TabAlignment.center,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 4,
                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: [
                        Tab(text: 'Food 1'),
                        Tab(text: 'Food 2'),
                        Tab(text: 'Food 3'),
                        Tab(text: 'Food 4'),
                        Tab(text: 'Food 5'),
                      ],
                    ),
                  ),

                  Container(

                    color: Colors.red,
                    child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            color: Colors.orange,
                          ),
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.red,
                        ),
                      ],
                    ),
                  )


                  // TabBarView(
                  //   children: [
                  //     SingleChildScrollView(
                  //         child: Container(
                  //             padding: EdgeInsets.all(4),
                  //             margin: EdgeInsets.all(8),
                  //             alignment: Alignment.topLeft,
                  //             color: Colors.purple,
                  //             child: Column(
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               children: [
                  //                 ListView.builder(
                  //                     shrinkWrap: true,
                  //                     itemCount: dishPrices.length,
                  //                     itemBuilder: (context, index) {
                  //                       return ListTile(
                  //                         title: Text(dishNames[index]),
                  //                         subtitle:
                  //                             Text('\$${dishPrices[index]}'),
                  //                         leading: Image.asset(
                  //                           dishImages[index],
                  //                           width: 40,
                  //                           height: 40,
                  //                         ),
                  //                       );
                  //                     }),
                  //               ],
                  //             ))),
                  //     SingleChildScrollView(
                  //         child: Container(
                  //             padding: EdgeInsets.all(4),
                  //             margin: EdgeInsets.all(8),
                  //             alignment: Alignment.topLeft,
                  //             color: Colors.pink,
                  //             child: Column(
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               children: [
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //               ],
                  //             ))),
                  //     SingleChildScrollView(
                  //         child: Container(
                  //             padding: EdgeInsets.all(4),
                  //             margin: EdgeInsets.all(8),
                  //             alignment: Alignment.topLeft,
                  //             color: Colors.yellow,
                  //             child: Column(
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               children: [
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //               ],
                  //             ))),
                  //     SingleChildScrollView(
                  //         child: Container(
                  //             padding: EdgeInsets.all(4),
                  //             margin: EdgeInsets.all(8),
                  //             alignment: Alignment.topLeft,
                  //             color: Colors.blue,
                  //             child: Column(
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               children: [
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //               ],
                  //             ))),
                  //     SingleChildScrollView(
                  //         child: Container(
                  //             padding: EdgeInsets.all(4),
                  //             margin: EdgeInsets.all(8),
                  //             alignment: Alignment.topLeft,
                  //             color: Colors.orange,
                  //             child: Column(
                  //               mainAxisAlignment: MainAxisAlignment.start,
                  //               children: [
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //                 Text('Tab 1 Content'),
                  //               ],
                  //             ))),
                  //   ],
                //  ),
                ],
              ),
            )
          ],
        ),
        color: Colors.red,
      ),
    );
  }
}
