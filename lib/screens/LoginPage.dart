import 'package:flutter/cupertino.dart';
import 'HomePage.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/HomePage.dart';
import 'package:jiit_hub/screens/SignupPage.dart';
import '../Constants.dart' as K;
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:http/http.dart' as http;
import 'package:jiit_hub/responsive_constants.dart';
import 'package:toast/toast.dart';
import 'dart:convert';
import 'package:jiit_hub/screens/Methods.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController EnrollmentController=TextEditingController();
  final TextEditingController PasswordController=TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
                "JIIT HUB",
                // style: TextStyle(fontFamily: 'RobotoMono'),
            )),
          backgroundColor: Color.fromRGBO(29, 53, 87, 1),
          // elevation: 10,
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //           colors: [
        //             Colors.deepPurple,
        //             Colors.purple,
        //             Colors.pink,
        //           ],
        //           // stops: [0.2,2.2,2.3]
        //       )
        //   ),
        // ),
      ),
      backgroundColor: Color.fromRGBO(231, 227, 238, 1),

      body: isLoading? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      )
          : SingleChildScrollView(
          child: Container(

            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     // radius: 1.2,
            //     colors: [
            //       // Colors.white,
            //       // Color.fromRGBO(29, 53, 87, 1),
            //       Colors.white,
            //       Color.fromRGBO(29, 53, 87, 1),
            //     ],
            //     // focalRadius: 200
            //     // stops: [0.2,2.2,2.3],
            //   )
            // ),
            child: Column(
              children: [
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Container(
                  child: Image(image: AssetImage('Assets/new.jpg'),height: Responsive.height(30, context),),
                ),
              ),
              SizedBox(
                height: Responsive.height(1, context),
              ),
              Container(
                child: Text('Login',
                    style: TextStyle(
                  color: Color.fromRGBO(29, 53, 87, 1),
                      fontSize: 33
                ),
                    textAlign: TextAlign.center),
              ),
              SizedBox(
                height: Responsive.height(2, context),
              ),
              Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(CupertinoIcons.mail_solid),
                  ),
                  Container(
                    width: Responsive.width(80, context),
                    child: TextField(
                      decoration: InputDecoration(

                          hintText: "Email Address",
                          // hintStyle: TextStyle(color: Colors.white)
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
                      'Login',
                      style: TextStyle(fontSize: 20,),
                    ),
                    onPressed: ()async {
                        if(EnrollmentController.text.isNotEmpty &&
                          PasswordController.text.isNotEmpty) {
                            setState(() {
                              isLoading = true;
                            });

                            LogIn(EnrollmentController.text, PasswordController.text)
                            .then((user) {
                              if(user != null) {
                                print("Login Successful");
                                setState(() {
                                  isLoading = false;
                                });
                                Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                              } else{
                                print("Login failed");
                                setState(() {
                                  isLoading = false;
                                });
                              }
                            });
                        } else{
                          print("Please fill the form correctly");
                        }
                    },
                  ),
                ),
              ],
            ),
              SizedBox(
              height: Responsive.height(2, context),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (_)=> CreateAccount()));
                   },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0,right: 50),
                      child: Text(
                          'Not registered?',
                        style: TextStyle(fontSize: 20,color:Colors.blueGrey[800]),
                      ),
                    ),
                ),
              ],
            ),
                SizedBox(
                  height: Responsive.height(9.45, context),
                ),
          ],
        ),
          ),
      ),
    );
  }
}
