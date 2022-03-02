import 'package:flutter/material.dart';
import 'MyWork.dart';
class GeneralPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Center(child: Text('General Page')),
          ),
          backgroundColor: Color.fromRGBO(29, 53, 87, 1),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return MyWork(indexx: 2,);}));
                },
              );
            },
          ),
        )
      ),
    );
  }
}
