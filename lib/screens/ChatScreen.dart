import 'package:flutter/material.dart';
import 'package:jiit_hub/Constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;
late final User loggedInUser;

class ChatScreen extends StatefulWidget {
  static String chatScreen = 'ChatScreenpage1';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final messageTextEditingController = TextEditingController();
  String messageText="";

  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getUserDetail();
  }
  
  //tanny

  void getUserDetail() async {
    try {
      final createdUser = await _auth.currentUser as User;
      if (createdUser != null) {
        loggedInUser = createdUser;
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
        title: Text('Discussion ⭐'),
        backgroundColor: Color.fromRGBO(29, 53, 87, 1),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            StreambuilderClass(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageTextEditingController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      messageTextEditingController.clear();
                      _firestore.collection('messages').add({
                        'sender': loggedInUser.email,
                        'text': messageText,
                        'time': FieldValue.serverTimestamp() //add this
                      });
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
      ),
    );
  }
}

class StreambuilderClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firestore
            .collection('messages')
            .orderBy('time', descending: false)//add this
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.blueGrey[800],
              ),
            );
          }
          final messages = snapshot.data!.docs.reversed;
          List<MessageBubble> messageBubbles = [];
          for (var message in messages) {
            final messageText = message['text'];
            final messageSender = message['sender'];
            final messageTime = message['time'] as Timestamp; //add this
            final currentUser = loggedInUser.email;

            final messageBubble = MessageBubble(
              sender: messageSender,
              text: messageText,
              isMe: currentUser == messageSender,
              time: messageTime, //add this
            );

            messageBubbles.add(messageBubble);
          }

          return Expanded(
            child: ListView(
                reverse: true,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                children: messageBubbles),
          );
        });
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final String sender;
  final bool isMe;
  final Timestamp time; // add this

  MessageBubble({required this.text,required this.sender,required this.isMe,required this.time}); //add the variable  in this constructor
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            ' $sender',
            style: TextStyle(color: Colors.black54, fontSize: 12),
          ),
          Material(
            color: isMe ? Color.fromRGBO(29, 53, 87, 1) : Colors.white,
            borderRadius: isMe
                ? BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))
                : BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            elevation: 6,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 15, color: isMe ? Colors.white : Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}