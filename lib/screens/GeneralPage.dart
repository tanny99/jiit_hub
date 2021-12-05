import 'package:flutter/material.dart';
import 'HomePage.dart';
class GeneralPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('General Page'),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return HomePage(indexx: 2,);}));
                },
              );
            },
          ),
        )
      ),
    );
  }
}
