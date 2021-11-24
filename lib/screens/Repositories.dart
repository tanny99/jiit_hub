import 'package:flutter/material.dart';
class RepositoriesPage extends StatefulWidget {
  @override
  _RepositoriesPageState createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RepositoriesPage',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('RepositoriesPage')),
          backgroundColor: Colors.blueGrey[800],
        ),
        body:Column(
          children: [

          ],
        ),

      ),
    );
  }
}
