// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/AcademicsPage.dart';
import 'HubsPage.dart';
import 'CSEFaculty.dart';
import 'BIO.dart';
import 'CSE_ITProject.dart';
// import 'HomePage.dart';
import 'MyWork.dart';
import 'ECE.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
class CSEMainPage extends StatefulWidget {
  @override
  State<CSEMainPage> createState() => _CSEMainPageState();
}
late String download_URL;
// bool isLoading = false;
class _CSEMainPageState extends State<CSEMainPage> {
  @override
  Future<void> downloadURLExample() async {
    download_URL = await firebase_storage.FirebaseStorage.instance
        .ref('Projects/File_URL')
        .getDownloadURL();
    // setState(() {
    //   isLoading = true;
    // });
  }
  void initState() {
    super.initState();
    downloadURLExample();//
  }
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) => CSE_ITProject(downloadURL: download_URL,)),);
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
                        // Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context){return AcademicsPage();}));
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
