// import 'dart:html';

import 'package:flutter/material.dart';
import 'HubsPage.dart';
import 'CSEFaculty.dart';
import 'BIO.dart';
import 'HomePage.dart';
import 'ECE.dart';
class CSEMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

          body: Container(
            height: double.infinity,
            width:  double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Assets/aca_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            //
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  child: SizedBox(height: 70,width:250,
                    child: TextButton(
                      onPressed:(){
                        // Navigator.push(context,MaterialPageRoute(builder: (context) => CSE_ITPage()),);
                      },
                      child: Text(
                        'CSE & IT Projects',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                        side: BorderSide(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  child: SizedBox(height: 70, width: 250,
                    child: TextButton(
                      onPressed:(){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => CSEFaculty()),);
                      },
                      child: Text(
                          'Faculty',
                          style: TextStyle(color: Colors.white, fontSize: 20)
                      ),
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                        side: BorderSide(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top:50),
                  child: SizedBox(
                    child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, ),
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                        side: BorderSide(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ),
              ],

            ) /* add child content here */,
          ),
        )
    );
  }
}
