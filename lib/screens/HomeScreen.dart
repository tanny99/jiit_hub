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
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 8),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[Text('My Work',
              style: TextStyle(
                  fontSize: 20,

              ),),IconButton(onPressed: (){}, icon: Icon(Icons.menu))]),
          ),
          ListTile(leading: Icon(Icons.work),title: Text('Issues', style: TextStyle(fontSize: 18)),onTap:(){},),
          ListTile(leading: Icon(Icons.swap_horizontal_circle_rounded),title: Text('Pull Requests', style: TextStyle(fontSize: 18)),onTap:(){},),
          ListTile(leading: Icon(Icons.message),title: Text('Discussions', style: TextStyle(fontSize: 18)),onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen()));
          },),
          ListTile(leading: Icon(Icons.book_outlined),title: Text('Repositories', style: TextStyle(fontSize: 18)),onTap:(){Navigator.push(context, MaterialPageRoute(builder: (_) => RepositoriesPage()));},),
          ListTile(leading: Icon(Icons.circle),title: Text('Organizations', style: TextStyle(fontSize: 18)),onTap:(){},),
          SizedBox(
            height: Responsive.height(10, context),
          ),
          TextButton(
            onPressed: () => logOut(context),
            child: Text("Log Out",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
            ),),
          ),
        ],
      ),
    );
  }
}
