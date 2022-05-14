import 'package:flutter/material.dart';
import 'AboutJIIT.dart';
import 'ContactUs.dart';
import 'dart:async';
import 'CalenderPageView.dart';
import 'package:webview_flutter/webview_flutter.dart';
class NotificationPage extends StatelessWidget {


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
      image: AssetImage("Assets/jaypee_building.jpeg"),
      fit: BoxFit.cover,
    ),
  ),
  child:   Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 8),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[Text('JIIT\'s',
          style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),),IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,))]),
      ),
      ListTile(leading: Icon(Icons.calendar_today, color: Colors.white),title: Text('Calender', style: TextStyle(fontSize: 18,color: Colors.white)),onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (_) => CalenderPageView()));},),

      ListTile(leading: Icon(Icons.account_box_outlined, color: Colors.white),title: Text('About Us', style: TextStyle(fontSize: 18,color: Colors.white)),onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (_) => AboutJIIT()));},),

      ListTile(leading: Icon(Icons.call, color: Colors.white),title: Text('Contact Us', style: TextStyle(fontSize: 18,color: Colors.white)),onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (_) => ContactUs()));},),
    ],
  ),
),
      ),
    );
  }
}
