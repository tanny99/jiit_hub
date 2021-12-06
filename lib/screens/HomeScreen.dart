import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/Methods.dart';
import 'package:jiit_hub/screens/Repositories.dart';
import '../Constants.dart' as K;
import 'package:jiit_hub/responsive_constants.dart';
import 'package:flutter/cupertino.dart';
import 'ChatScreen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(height: double.infinity,
          width:  double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Assets/jaypee_building.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 8),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[Text('My Work',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),),IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,))]),
          ),
          ListTile(leading: Icon(Icons.work, color: Colors.white),title: Text('Issues', style: TextStyle(fontSize: 18,color: Colors.white)),onTap:(){},),
          ListTile(leading: Icon(Icons.swap_horizontal_circle_rounded, color: Colors.white),title: Text('Pull Requests', style: TextStyle(fontSize: 18, color: Colors.white)),onTap:(){},),
          ListTile(leading: Icon(Icons.message, color: Colors.white),title: Text('Discussions', style: TextStyle(fontSize: 18, color: Colors.white)),onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen()));
          },),
          ListTile(leading: Icon(Icons.book_outlined, color: Colors.white),title: Text('Repositories', style: TextStyle(fontSize: 18, color: Colors.white)),onTap:(){Navigator.push(context, MaterialPageRoute(builder: (_) => RepositoriesPage()));},),
          ListTile(leading: Icon(Icons.circle, color: Colors.white),title: Text('Organizations', style: TextStyle(fontSize: 18, color: Colors.white)),onTap:(){},),
          SizedBox(
            height: Responsive.height(10, context),
          ),
          Container(
            child: SizedBox(height: 50,width: 230,
              child: TextButton(
                onPressed: () => logOut(context),
                child: Text("Log Out",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
                  side: BorderSide(color: Colors.white, width: 3),
                ),
              ),
            ),
          ),
        ],
      ),
      ),
    ),
    );
  }
}
