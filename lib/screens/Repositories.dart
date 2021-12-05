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
          backgroundColor: Color.fromRGBO(29, 53, 87, 1),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(29, 53, 87, 1),
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
                    margin: EdgeInsets.only(top: 10,bottom: 5),
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey, width: 3),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 5,bottom: 7),
                          child: Row(
                            children: [
                              Icon(Icons.person_pin_rounded),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  child: Text(''+snapshot.data!.docs[index].get('sender'),
                                    style: TextStyle(fontWeight:FontWeight.w500, fontSize: 17),
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  // decoration: InputDecoration(
                                  //
                                  // ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: FadeInImage.memoryNetwork(
                                  fit: BoxFit.fill,
                                  placeholder: kTransparentImage,
                                  image: snapshot.data!.docs[index].get('url'),
                                ),
                              ),
                            ),
                          ),
                        ),
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