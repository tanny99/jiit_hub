import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:jiit_hub/screens/LoginPage.dart';
import 'package:toast/toast.dart' ;
import 'package:jiit_hub/screens/Methods.dart';
import '../Constants.dart' as K;
import 'package:flutter/cupertino.dart';
import 'package:jiit_hub/responsive_constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
// var data;


class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController EmailController=TextEditingController();
  final TextEditingController EnrollmentController=TextEditingController();
  final TextEditingController PasswordController=TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: isLoading
          ? Center(
            child: Container(
              child: CircularProgressIndicator(),
            ),
         )
          : SingleChildScrollView(
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
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.envelope),
                ),
                Container(
                  width: Responsive.width(80, context),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email"
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.left,
                    controller: EmailController,
                  ),
                ), ]
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
                      keyboardType: TextInputType.text,
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
                    onPressed: () {
                        if(EmailController.text.isNotEmpty &&
                        EnrollmentController.text.isNotEmpty &&
                        PasswordController.text.isNotEmpty){
                          setState(() {
                            isLoading = true;
                          });
                          createAccount(EmailController.text, EnrollmentController.text, PasswordController.text)
                              .then((user) {
                                  if (user != null) {
                                      setState(() {
                                        isLoading = false;
                                      });
                                      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
                                      print("Account Created Successful");
                                  } else {
                                      print("Account Creation Failed");
                                  }
                              });
                        }else {
                          print("Please enter fields.");
                        }
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
