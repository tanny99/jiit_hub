import 'package:flutter/material.dart';
import 'package:jiit_hub/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;// late FirebaseUser loggedInUser;
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  late final User loggedInUser;

  late String messageText;
  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final User user = _auth.currentUser as User;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text('Disscussions 🔔'),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
            Flexible(
              child: StreamBuilder(
                  stream: firestore.collection('messages').snapshots(),
                  builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    return ListView(
                      children: snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                        return ListTile(
                          title: Text(data['text']),
                          subtitle: Text(data['sender']),
                        );
                      }).toList(),
                    );
                  }
              ),
            ),

          Container(
            decoration: kMessageContainerDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller:messageTextController ,
                    decoration: kMessageTextFieldDecoration,
                  ),
                ),
                TextButton(
                  onPressed: () async{
                    //Implement send functionality.
                    CollectionReference messages =await FirebaseFirestore.instance.collection('messages');
                    print('1');
                    print(messageTextController);
                    await messages .add({
                      'sender': loggedInUser.email,
                      'text': messageTextController.text,

                    })
                        .then((value) => print("User Added"))
                        .catchError((error) => print("Failed to add user: $error"));
                    print('sad');
                    print(loggedInUser.email);
                    messageTextController.clear();

                  },
                  child: Text(
                    'Send',
                    style: kSendButtonTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}