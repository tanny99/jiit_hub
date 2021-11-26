import 'package:flutter/material.dart';
class AddRepository extends StatefulWidget {
  @override
  _AddRepositoryState createState() => _AddRepositoryState();
}

class _AddRepositoryState extends State<AddRepository> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AddRepository',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('AddRepository')),
          backgroundColor: Colors.blueGrey[800],
        ),
        body:Column(
          children: [
            //code hereaa

          ],
        ),

      ),
    );
  }
}
