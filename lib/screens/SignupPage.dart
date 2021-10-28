import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:jiit_hub/screens/LoginPage.dart';
import 'package:toast/toast.dart' ;
import 'Constants.dart' as K;
import 'package:flutter/cupertino.dart';
import 'package:jiit_hub/responsive_constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
var data;

TextEditingController EnrollmentController=TextEditingController();
TextEditingController PasswordController=TextEditingController();
TextEditingController PasswordControllerCheck=TextEditingController();
Future<int> SignupUser(String enrollment, String password) async {
  final Uri url1 =
  Uri.parse('https://jiithub-4f546-default-rtdb.firebaseio.com/Students/.json');
  final response = await http.get(
    url1,
  );
  data = response.body;
  print(data);
  // print('##'+jsonDecode(data)[enrollment]);

print(jsonDecode(data)[enrollment]);
print(password);
  if (jsonDecode(data)[enrollment] == password) {
    return 1;
  } else {
    return 0;
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Padding(
                padding: const EdgeInsets.only(right:55.0),
                child: Center(child: Text('JIIT HUB!'),),
              ),
              backgroundColor: Colors.blueGrey[800],
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: Container(
                child: Image(image: AssetImage('Assets/jiit_logo.jpg'),height: Responsive.height(30, context),),
              ),
            ),
            SizedBox(
              height: Responsive.height(1, context),
            ),
            Container(
              child: Text('SignUp !',style: K.style1,textAlign: TextAlign.center),
            ),
            SizedBox(
              height: Responsive.height(2, context),
            ),
            Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.person),
                  ),
                  Container(
                    width: Responsive.width(80, context),
                    child: TextField(
                      decoration: InputDecoration(

                          hintText: "Enrollment Number"
                      ),
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.left,
                      controller: EnrollmentController,
                    ),
                  ),]
            ),
            SizedBox(
              height: Responsive.height(2, context),
            ),
            Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.lock_fill),
                  ),
                  Container(
                    width: Responsive.width(80, context),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                      controller: PasswordController,

                    ),
                  ),
                ]
            ),
            SizedBox(
              height: Responsive.height(2, context),
            ),
            Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.lock_fill),
                  ),
                  Container(
                    width: Responsive.width(80, context),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                      controller: PasswordController,

                    ),
                  ),
                ],
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
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey)),
                    child: Text(
                      'SignUp',
                      style: TextStyle(fontSize: 20,),
                    ),
                    onPressed: ()async {
                      int i=await SignupUser(EnrollmentController.text, PasswordController.text);
                      if(i==1){
                        Toast.show("Login Successfully! Welcome!!", context,
                            duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      }
                      else{
                        Toast.show("Not an Authorized Member!", context,
                            duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                      }
                      print(await SignupUser(EnrollmentController.text, PasswordController.text));
                      print(EnrollmentController.text);
                      print(PasswordController.text);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
