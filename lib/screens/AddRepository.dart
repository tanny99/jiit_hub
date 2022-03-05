import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'add_image.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;
class AddRepository extends StatefulWidget {
  @override
  _AddRepositoryState createState() => _AddRepositoryState();
}

class _AddRepositoryState extends State<AddRepository> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Repositories')),
      floatingActionButton: FloatingActionButton(
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
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      FadeInImage.memoryNetwork(
                          fit: BoxFit.cover,
                          placeholder: kTransparentImage,
                          image: snapshot.data!.docs[index].get('url')),

                    ],


                  );
                }),
          );
        },
      ),
    );
  }
}