import 'package:flutter/material.dart';
class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Center(
              child: const Text('Developer\'s Profile'),
            ),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.blueGrey.shade300],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.5, 0.9],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        // CircleAvatar(
                        //   backgroundColor: Colors.blue.shade300,
                        //   minRadius: 35.0,
                        //   // child: Icon(
                        //   //   Icons.call,
                        //   //   size: 30.0,
                        //   // ),
                        // ),
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          minRadius: 60.0,
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                            AssetImage(
                                'Assets/ujjitanny.jpg'),
                          ),
                        ),
                        // CircleAvatar(
                        //   backgroundColor: Colors.blue.shade300,
                        //   minRadius: 35.0,
                        //   // child: Icon(
                        //   //   Icons.message,
                        //   //   size: 30.0,
                        //   // ),
                        // ),

                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tanny & xTrojanVoodoox',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Flutter Developer\'s',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   child: Row(
              //     children: <Widget>[
              //       Expanded(
              //         child: Container(
              //           color: Colors.blue.shade300,
              //           child: ListTile(
              //             title: Text(
              //               '9000',
              //               textAlign: TextAlign.center,
              //               style: TextStyle(
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 30,
              //                 color: Colors.white,
              //               ),
              //             ),
              //             subtitle: Text(
              //               'Followers',
              //               textAlign: TextAlign.center,
              //               style: TextStyle(
              //                 fontSize: 20,
              //                 color: Colors.white70,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: Container(
              //           color: Colors.red,
              //           child: ListTile(
              //             title: Text(
              //               '9000',
              //               textAlign: TextAlign.center,
              //               style: TextStyle(
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 30,
              //                 color: Colors.white,
              //               ),
              //             ),
              //             subtitle: Text(
              //               'Following',
              //               textAlign: TextAlign.center,
              //               style: TextStyle(
              //                 fontSize: 20,
              //                 color: Colors.white70,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'tanishkgupta1010@gmail.com',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'GitHub',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'https://github.com/ujjwal-webdev',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Linkedin',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'https://www.linkedin.com/in/tanishk-gupta-938b891a9/',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }

  }

