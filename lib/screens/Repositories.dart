import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'add_image.dart';
FirebaseFirestore _firestore = FirebaseFirestore.instance;
class RepositoriesPage extends StatefulWidget {
  @override
  _RepositoriesPageState createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Repositories'),
          backgroundColor: Colors.blueGrey[800],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddImage()));
        },
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('imageURLs').snapshots(),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? Center(
                child: CircularProgressIndicator(),
              )
              : Container(
                padding: EdgeInsets.all(4),
                child: GridView.builder(
                  itemCount: snapshot.data!.docs.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                  itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 0,bottom: 5),
                    child: Column(
                      children: [
                        Flexible(
                          child: FadeInImage.memoryNetwork(
                              fit: BoxFit.cover,
                              placeholder: kTransparentImage,
                              image: snapshot.data!.docs[index].get('url')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 2),
                          child: Container(child: Text('Submitted By- '+snapshot.data!.docs[index].get('sender'),style: TextStyle(fontWeight:FontWeight.w500 ),),alignment: Alignment.bottomLeft,),
                        )
                      ],
                    )
                  );
                  // Text(snapshot.data!.docs[index].get('sender'))
                }),
          );
        },
      ),
    );
  }
}