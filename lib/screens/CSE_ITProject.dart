import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/AddProject.dart';
import 'package:jiit_hub/screens/CSEMainPage.dart';
import 'package:jiit_hub/File_Picker.dart';

class CSE_ITProject extends StatefulWidget {
  final String downloadURL;
  CSE_ITProject({required this.downloadURL});
  @override


  State<CSE_ITProject> createState() => _CSE_ITProjectState();

}

class _CSE_ITProjectState extends State<CSE_ITProject> {
  @override






  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Padding(
          padding: const EdgeInsets.only(right: 0.0),
          child: Center(child: Text('Projects')),
          ),
          backgroundColor: Color.fromRGBO(29, 53, 87, 1),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return CSEMainPage();}));
                },
              );
            },
          ),
            actions: [
              GestureDetector(child: IconButton(
                  icon: Icon(Icons.add_circle, size: 32,), onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){return AddProject();}));
              }),)
            ]),
          body: Container(
            height: double.infinity,
            width:  double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage("Assets/aca_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(widget.downloadURL)

              ],
            )
          ),
      ),
    );
  }
}