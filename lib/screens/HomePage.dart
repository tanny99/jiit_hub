import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyProfile.dart';
import 'Constants.dart' as K;
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;

  void _onTap(int index){
    setState((){
      selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text('JIIT HUB!'),
              leading: Icon(Icons.icecream_outlined),
              actions: [
                GestureDetector(child: IconButton(
                    icon: Icon(Icons.person, size: 32,), onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyProfile()));
                }),),
                GestureDetector(child: IconButton(
                    icon: Icon(Icons.add_circle, size: 32,), onPressed: () {}),)
              ]),
          body:SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[Text('My Work', style: K.style2,),IconButton(onPressed: (){}, icon: Icon(Icons.menu))]),
                ),
                ListTile(leading: Icon(Icons.work),title: Text('Issues', style: K.style2),onTap:(){},),
                ListTile(leading: Icon(Icons.swap_horizontal_circle_rounded),title: Text('Pull Requests', style: K.style2),onTap:(){},),
                ListTile(leading: Icon(Icons.message),title: Text('Discussions', style: K.style2),onTap:(){},),
                ListTile(leading: Icon(Icons.book_outlined),title: Text('Repositories', style: K.style2),onTap:(){},),
                ListTile(leading: Icon(Icons.circle),title: Text('Organizations', style: K.style2),onTap:(){},),
              ],
            ),
          ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_none),label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.globe),label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          ],
          currentIndex: selectedIndex,
          onTap: _onTap,

        ),

      ),
    );
  }
}