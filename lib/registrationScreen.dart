import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController textEmail = TextEditingController();
    TextEditingController textPassword = TextEditingController();
    TextEditingController textEmailSignUp = TextEditingController();
    TextEditingController textPasswordSignUp = TextEditingController();
    TextEditingController textNameSignUp = TextEditingController();
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
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 16, right: 16),
                      child: TabBar(
                        tabs: [
                          Tab(text: 'Login'),
                          Tab(text: 'Sign In'),
                        ],
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),

                        indicatorWeight: 4,
                        // indicator: ShapeDecoration(
                        //   shape: RoundedRectangleBorder(
                        //   )
                        //       ,
                        //   color: Colors.black
                        // ),
                      ),
                    ),
                    Expanded(
                        child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(16),
                              color: Colors.white60,
                              child: Column(
                                children: [
                                  TextField(
                                    controller: textEmail,
                                    decoration: InputDecoration(
                                        labelText: 'Email',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green),
                                        borderRadius: BorderRadius.circular(10)
                                            
                                      )
                                    
                                    ),
                                    onChanged: (value) {
                                      print('$value');
                                    },
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  TextField(
                                    controller: textPassword,
                                    decoration: InputDecoration(
                                        labelText: 'Password',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.black))


                                    ,                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green),
                                        borderRadius: BorderRadius.circular(10)

                                    )
                                    )
                                    ,


                                    onChanged: (value) {
                                      print('$value');
                                    },
                                  ),
                                  Container(
                                      alignment: Alignment.topLeft,
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text('Forget Passcode'))),
                                  Container(
                                    margin: EdgeInsets.all(16),
                                    width: 800,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 50)), // Set the minim here

                                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFA4A0C)),
                                          shape: MaterialStateProperty.all<OutlinedBorder>(
                                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

                                          ),
                                        ),
                                        onPressed: () {
                                          print('$textPassword and $textEmail');
                                        },
                                        child: Text('Login'  ,style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
                                  )
                                ],
                              )),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 30, left: 16, right: 16),
                            child: Column(
                              children: [
                                TextField(
                                  controller: textEmailSignUp,
                                  decoration: InputDecoration(
                                      labelText: 'Email',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.green),
                                          borderRadius: BorderRadius.circular(10)

                                      )
                                  ),
                                  onChanged: (value) {
                                    print('$value');
                                  },
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                TextField(
                                  controller: textPasswordSignUp,
                                  decoration: InputDecoration(
                                      labelText: 'Password',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.green),
                                          borderRadius: BorderRadius.circular(10)

                                      )
                                  ),
                                  onChanged: (value) {
                                    print('$value');
                                  },
                                ),
                                SizedBox(height: 12,),
                                TextField(
                                  controller: textNameSignUp,
                                  decoration: InputDecoration(
                                      labelText: 'Name',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          borderSide:
                                          BorderSide(color: Colors.black)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.green),
                                          borderRadius: BorderRadius.circular(10)

                                      )
                                  ),
                                  onChanged: (value) {
                                    print('$value');
                                  },
                                ),

                                Container(
                                  margin: EdgeInsets.all(16),
                                  width: 400,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                        minimumSize: MaterialStateProperty.all<Size>(Size(double.infinity, 50)), // Set the minim here

                                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFA4A0C)),
                                        shape: MaterialStateProperty.all<OutlinedBorder>(
                                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

                                        ),
                                      ),

                                      onPressed: () {
                                        print('$textPassword and $textEmail');
                                      },
                                      child: Text('Sign Up' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),)),
                                )
                              ],
                            ),
                          ),
                        ),
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
  }
}

class MyTextField extends StatefulWidget {
  @override
  _MyTextField createState() => _MyTextField();
  bool isFocused = false;
}

class _MyTextField extends State<MyTextField> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            labelText: 'Enter Email',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black))),
        onChanged: (value) {
          print('$value');
        },
      ),
    );
  }
}
