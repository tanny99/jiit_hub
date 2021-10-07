import 'package:flutter/material.dart';
import 'MyProfile.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          AppBar(title: Text('JIIT HUB!'),leading: Icon(Icons.icecream_outlined),actions: [GestureDetector(child: IconButton(icon: Icon(Icons.person,size: 32,), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile()));}),),GestureDetector(child: IconButton(icon: Icon(Icons.add_circle,size: 32,), onPressed: (){}),)
    ])
        ],
      ),
    );
  }
}
