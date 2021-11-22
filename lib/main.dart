import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'screens/LoginPage.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot){
          if(snapshot.hasError){
            print("Error");
          }
          if(snapshot.connectionState == ConnectionState.done)
            {return LoginPage();}
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
// child: LoginPage()
