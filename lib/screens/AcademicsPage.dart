import 'package:flutter/material.dart';
import 'HubsPage.dart';
import 'CSE&IT.dart';
import 'BIO.dart';
import 'ECE.dart';
import 'GeneralPage.dart';
class AcademicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            height: double.infinity,
            width:  double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Assets/spiderman.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            //
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 70,width:300,child: TextButton(onPressed:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => CSE_ITPage()),);}, child: Text('CSE & IT',style: TextStyle(color: Colors.black),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),)),
                TextButton(onPressed:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => ECEPage()),);}, child: Text('ECE',style: TextStyle(color: Colors.black)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),),
                TextButton(onPressed:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => BiotechPage()),);}, child: Text('Biotech',style: TextStyle(color: Colors.black)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),),
              ],
            ) /* add child content here */,
          ),
        )
    );
  }
}
