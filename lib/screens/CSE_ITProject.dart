import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/AddProject.dart';
import 'package:jiit_hub/screens/CSEMainPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jiit_hub/File_Picker.dart';
import 'ProjectDetails.dart';
FirebaseFirestore _firestore = FirebaseFirestore.instance;
final search_controller = TextEditingController();
String controllerText = '';
class CSE_ITProject extends StatefulWidget {
  // final String downloadURL;
  CSE_ITProject(
    //   {
    // required this.downloadURL}
    );

  @override

  _CSE_ITProjectState createState() => _CSE_ITProjectState();


  // }
  //
  // State<CSE_ITProject> createState() => _CSE_ITProjectState();

}

class _CSE_ITProjectState extends State<CSE_ITProject> {

  @override
  textListener() {
    print("Current Text is ${search_controller.text}");
  }
  final _auth = FirebaseAuth.instance;

  void initState() {
    super.initState();
    search_controller.addListener(textListener);
    setState(() {
      
    });
  }


  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Padding(
          padding: const EdgeInsets.only(right: 0.0),
          child: Center(child: Text('Projects')),
          ),
          backgroundColor: Color.fromRGBO(29, 53, 87, 1),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.next_plan),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return CSEMainPage();}));
                },
              );
            },
          ),
            actions: [
              GestureDetector(child: IconButton(
                  icon: Icon(Icons.add_circle, size: 32,), onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){return AddProject();}));
              }),)
            ]),
          body: Container(
            height: double.infinity,
            width:  double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage("Assets/aca_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white)

                  ),
                  // child: Padding(
                    // padding: const EdgeInsets.only(top: 15.0),
                    child: TextField(controller: search_controller,),
                    // Image.network(
                    //   widget.downloadURL,
                    //   width: 200,
                    //   height: 200,
                    //   // fit: BoxFit.cover,
                    // ),
                  // ),
                ),
                StreambuilderClass(Sdata: search_controller.text.toString(),)

              ],
            )
          ),
      ),
    );
  }
}

class StreambuilderClass extends StatelessWidget {
  final Sdata;
  StreambuilderClass({@required this.Sdata});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firestore
            .collection('Projects')
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
          Map map=Map<MessageBubble,int>();
          for (var message in messages) {
            final Description = message['Description'];
            final File_URL = message['File_URL'];
            final List Keywords = message['Keywords']; //add this
            final Your_Name = message['Your_Name'];
            final Project_Name = message['Project_Name'];
            // final currentUser = loggedInUser.email;

            final messageBubble = MessageBubble(
              Description: Description,
              File_URL: File_URL,
              Keywords: Keywords,
              Your_Name: Your_Name,
              Project_Name: Project_Name,
            );
            // if(Sdata==null||Sdata==''){
            //   messageBubbles.add(messageBubble);
            // }




              for( String i in Keywords){
                if(i.toLowerCase()==Sdata.toLowerCase()){
                  if(map[messageBubble]==null){
                    map[messageBubble]=0;
                  }
                  else{
                    print('##');
                    map[messageBubble]+=1;
                  }
                  print(map.length);
                }
              }
              var des= Description.split(" ");

              for( String i in des){
                print(i);
                if(i.toLowerCase()==Sdata.toLowerCase()){
                  if(map[messageBubble]==null){
                    map[messageBubble]=0;
                  }
                  else{
                    print('@@');
                    map[messageBubble]+=1;
                  }
                }
              }

              //sorting  map<key,value> accn to value
              var sortedKeys = map.keys.toList(growable:false)
                ..sort((k1, k2) => map[k1].compareTo(map[k2]));
              Map sortedMap = Map<MessageBubble,int>
                  .fromIterable(sortedKeys, key: (k) => k, value: (k) => map[k]);
              sortedMap.forEach((k,v) => messageBubbles.add(k));









          }

          return Expanded(
            child: ListView(
                reverse: false,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                children: messageBubbles),
          );
        });
  }
}

class MessageBubble extends StatelessWidget {
  final String Description;
  final String File_URL;
  final List  Keywords;
  final String Your_Name;
  final String Project_Name;

  MessageBubble({required this.Keywords,required this.Description,required this.File_URL,required this.Project_Name,required this.Your_Name}); //add the variable  in this constructor
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: <Widget>[
          // Text(
          //   ' $Your_Name',
          //   style: TextStyle(color: Colors.black54, fontSize: 12),
          // ),
          Material(
            color:  Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30),),


            elevation: 6,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: TextButton(onPressed: () {   Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ProjectDetails(Description: Description,Keywords: Keywords,File_URL: File_URL,Project_Name: Project_Name,Your_Name: Your_Name
                  ,)),
              );},
              child: Text(Project_Name,style: TextStyle(fontSize: 15, color:Colors.blue ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}