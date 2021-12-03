import 'package:flutter/material.dart';
import 'HubsPage.dart';
import 'AcademicsPage.dart';
import 'GeneralPage.dart';
class ChoicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width:  double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Assets/jaypee_building.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70,width:300,child: TextButton(onPressed:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => HubsPage()),);}, child: Text('HUBS',style: TextStyle(color: Colors.black),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),)),
              TextButton(onPressed:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => AcademicsPage()),);}, child: Text('ACADEMICS',style: TextStyle(color: Colors.black)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),),
              TextButton(onPressed:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => GeneralPage()),);}, child: Text('GENERAL',style: TextStyle(color: Colors.black)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),),
            ],
          ) /* add child content here */,
        ),
      )
    );
  }
}
