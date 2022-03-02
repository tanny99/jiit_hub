import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MyProfile.dart';
import '../Constants.dart' as K;
import 'HomeScreen.dart';
import 'NotificationPage.dart';
import 'AddRepository.dart';
import 'package:jiit_hub/screens/Methods.dart';
import 'ExplorePage.dart';
import 'add_image.dart';
import 'MyProfilePage.dart';
class MyWork extends StatefulWidget {
  final int indexx;
  const MyWork({required this.indexx});

  @override

  _MyWorkState createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {

  // late int indexx;
  late int selectedIndex=widget.indexx;
  late int selectedPage = widget.indexx;


  final _PageOptions=[
    HomeScreen(),
    NotificationPage(),
    ExplorePage(),
    MyProfile()
  ];



  void _onTap(int index){
    setState((){
      selectedIndex=index;
      selectedPage=index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title:Center(child: Text('JIIT HUB ')),
              backgroundColor: Color.fromRGBO(29, 53, 87, 1),
              leading: Icon(Icons.icecream_outlined),
              actions: [
                GestureDetector(child: IconButton(
                    icon: Icon(Icons.add_circle, size: 32,), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return AddImage();}));
                }),)
              ]),
          body:_PageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.indigo,
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