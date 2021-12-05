import 'package:flutter/material.dart';
import 'AcademicsPage.dart';
class ECEPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ECE'),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return AcademicsPage();}));
                },
              );
            },
          ),),
      ),
    );
  }
}
