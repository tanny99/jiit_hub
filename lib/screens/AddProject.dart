import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/CSE_ITProject.dart';
import 'package:jiit_hub/responsive_constants.dart';
import '../Constants.dart' as K;
import 'package:flutter/cupertino.dart';
import 'add_image.dart';
import 'CSEMainPage.dart';
import 'package:jiit_hub/File_Picker.dart';

final TextEditingController ProjNameController = TextEditingController();
final TextEditingController YourNameController = TextEditingController();
final TextEditingController KeywordsController = TextEditingController();
final TextEditingController DescriptionController = TextEditingController();
List<String>Keywords=[];
class AddProject extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Center(child: Text('Add Your Project')),
        ),
            backgroundColor: Color.fromRGBO(29, 53, 87, 1),
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.arrow_back_outlined),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){return CSEMainPage();}));
                  },
                );
              },
            ),
        ),
        body: Container(
            height: double.infinity,
            width:  double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Assets/aca_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                    SizedBox(
                      height: Responsive.height(5, context),
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.mail,color: Colors.white,),
                          ),
                          Container(
                            width: Responsive.width(80, context),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(color: Colors.white, width: 2.0)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(color: Colors.white, width: 2.0)
                                  ),
                                  hintText: "Project Name",
                                  hintStyle: TextStyle(color: Colors.white)
                              ),
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.left,
                              controller: ProjNameController,
                            ),
                          ),
                        ]
                    ),
                  SizedBox(
                    height: Responsive.height(5, context),
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.person,color: Colors.white,),
                        ),
                        Container(
                          width: Responsive.width(80, context),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(

                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(color: Colors.white, width: 2.0)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(color: Colors.white, width: 2.0)
                                ),
                                hintText: "Your Name",
                                hintStyle: TextStyle(color: Colors.white)
                            ),
                            keyboardType: TextInputType.text,
                            textAlign: TextAlign.left,
                            controller: YourNameController,
                          ),
                        ),
                      ]
                  ),
                  SizedBox(
                    height: Responsive.height(5, context),
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.mail,color: Colors.white,),
                        ),
                        Container(
                          width: Responsive.width(75, context),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(color: Colors.white, width: 2.0)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(color: Colors.white, width: 2.0)
                                ),
                                hintText: "Enter upto 5 keywords",
                                hintStyle: TextStyle(color: Colors.white)
                            ),
                            keyboardType: TextInputType.text,
                            textAlign: TextAlign.left,
                            controller: KeywordsController,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8),
                          child: SizedBox(height: Responsive.height(10, context),width: Responsive.width(10, context),child: ElevatedButton(onPressed: (){Keywords.add(KeywordsController.text.toString());KeywordsController.clear();} , child: Icon(Icons.add),style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(2)),)),
                        ),
                      ]
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                      borderRadius: new BorderRadius.circular(20)
                    ),
                    height: Responsive.height(5, context),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Row(
                        children: [
                          for(String i in Keywords)
                            Padding(
                              padding: const EdgeInsets.only(right: 40.0),
                              child: Text(i.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),

                            )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Responsive.height(3, context),
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.mail,color: Colors.white,),
                        ),
                        Container(
                          width: Responsive.width(80, context),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(color: Colors.white, width: 2.0)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    borderSide: BorderSide(color: Colors.white, width: 2.0)
                                ),
                                hintText: "Description",
                                hintStyle: TextStyle(color: Colors.white)
                            ),
                            keyboardType: TextInputType.text,
                            textAlign: TextAlign.left,
                            controller: DescriptionController,
                          ),
                        ),
                      ]
                  ),
                  SizedBox(
                    height: Responsive.height(5, context),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: Responsive.width(50, context),
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(29, 53, 87, 1))),
                          child: Text(
                            'Next',
                            style: TextStyle(fontSize: 20,),
                          ),
                          onPressed: () {

                            String a=ProjNameController.text.toString();
                            String b=YourNameController.text.toString();
                            String c=DescriptionController.text.toString();
                            List<String> d = List.from(Keywords);
                            print(d);
                            ProjNameController.clear();
                            YourNameController.clear();
                            DescriptionController.clear();
                            Keywords.clear();
                            print(d);
                            Navigator.push(context,MaterialPageRoute(builder: (context) => FilePickerDemo(project_name: a,your_name: b,description: c,keywords: d,)),);},
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            )
        ),
      ),
    );
  }

}