import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fooder/dashboard.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToDashboard();
  }

  _navigateToDashboard() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink, Colors.purple],
            stops: [0.0, 0.8], // Adjust stops to control color distribution
            begin: Alignment.bottomCenter,

            end: Alignment.topCenter,          ),
        ),
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
              // Use a Stack to overlay the image with shadow
              Stack(
                children: [
                  // Image
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image(
                      image: AssetImage('assets/images/image.png'),
                    ),
                  ),
                  // Shadow overlay
                  // Positioned.fill(
                  //   bottom: 0,
                  //   child: Container(
                  //     height: 200,
                  //     width: 10,
                  //     alignment: Alignment.bottomCenter,
                  //     margin: EdgeInsets.only(top: 20),
                  //     decoration: BoxDecoration(
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.pink.withOpacity(0.3),
                  //           spreadRadius: 1,
                  //           blurRadius: 2,
                  //           offset: Offset(0, 2),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),

           ElevatedButton(onPressed: (){}, child: Text('Get Started ', style: TextStyle(color: Colors.red),)) ],
          ),
        ),
      ),
    );
  }
}
