import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/CSE_ITProject.dart';
import 'package:jiit_hub/responsive_constants.dart';
import '../Constants.dart' as K;
import 'package:flutter/cupertino.dart';

final TextEditingController ProjNameController = TextEditingController();
final TextEditingController YourNameController = TextEditingController();
final TextEditingController KeywordsController = TextEditingController();
final TextEditingController DescriptionController = TextEditingController();

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
                    Navigator.push(context, MaterialPageRoute(builder: (context){return CSE_ITProject();}));
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
            child: Column(
              children: [
                  SizedBox(
                    height: Responsive.height(5, context),
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.mail,color: Colors.white,),
                        ),
                        Container(
                          width: Responsive.width(80, context),
                          child: TextField(
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(CupertinoIcons.mail,color: Colors.white,),
                      ),
                      Container(
                        width: Responsive.width(80, context),
                        child: TextField(
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(CupertinoIcons.mail,color: Colors.white,),
                      ),
                      Container(
                        width: Responsive.width(80, context),
                        child: TextField(
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
                    ]
                ),
                SizedBox(
                  height: Responsive.height(5, context),
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(CupertinoIcons.mail,color: Colors.white,),
                      ),
                      Container(
                        width: Responsive.width(80, context),
                        child: TextField(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: Responsive.width(50, context),
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(29, 53, 87, 1))),
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 20,),
                        ),
                        onPressed: ()async {},
                      ),
                    ),
                  ],
                ),

              ],
            )
        ),
      ),
    );
  }

}