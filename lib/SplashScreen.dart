import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fooder/dashboard.dart';
import 'package:fooder/registrationScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   _navigateToDashboard();
  // }

  // _navigateToDashboard() async {
  //   await Future.delayed(Duration(milliseconds: 1500), () {});
  //
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => DashboardScreen()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    double sccreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80, left: 40),
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/images/log2.png'),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 50, top: 20),
                  child: Text(
                    'Food For\nEveryone',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    // Widget at the bottom of the stack
                    Container(

                      child: Image.asset('assets/images/image.png'),
                    ),
                    // Widget in the middle of the stack
                    Positioned(
                      top: 325.0,
                      child: Container(

                        width: 360,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.withOpacity(0.9),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0,3)
                            )
                          ]
                        ),


                      ),
                    ),
                    // Widget on top of the stack
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(

                    width: sccreenWidth*0.7,
                    height: sccreenWidth*0.15,
                    child: ElevatedButton(
                      onPressed: () {

                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>DashboardScreen()));
                      },
                      child: Text(
                        'Get Started ',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
