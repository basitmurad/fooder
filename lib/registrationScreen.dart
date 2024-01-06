import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              alignment: Alignment.center,
              color: Colors.white70,
              child: Image.asset('assets/images/log2.png'),
            ),
            Expanded(
                child: Container(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(tabs: [
                      Tab(text: 'Login' ),
                      Tab(text: 'Sign In'),
                    ],
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),
                      indicator: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        )
                            ,
                        color: Colors.black
                      ),
                    ),
                    Expanded(
                        child: TabBarView(
                      children: [
                        Container(
                            color: Colors.redAccent, child: Text('Tab 1 Content')),
                        Container(
                            color: Colors.blue, child: Text('Tab 1 Content')),
                      ],
                    ))
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
