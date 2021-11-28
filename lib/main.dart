import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/LoginPage.dart';
import 'package:jiit_hub/screens/HomePage.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JIIT HUB",
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
          future: _initialization,
          builder: (BuildContext context, AsyncSnapshot snapshot) {

            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return CircularProgressIndicator();
              default:
                if (snapshot.hasError)
                  return Text('Error: ${snapshot.error}');
                else
                if(snapshot.data == null)
                  return LoginPage();
                else
                  return HomePage();
            }

          }
      ),
      routes: {
        '/login' : (context) => new LoginPage(),
        '/feed' : (context) => new HomePage(),
      },
    );
  }
}
// child: LoginPage()
// MaterialApp(
// debugShowCheckedModeBanner: false,
// home: FutureBuilder(
// future: _initialization,
// builder: (context, snapshot){
// if(snapshot.hasError){
// print("Error");
// }
// if(snapshot.connectionState == ConnectionState.done)
// {return LoginPage();}
// return CircularProgressIndicator();
// },
// ),
// );