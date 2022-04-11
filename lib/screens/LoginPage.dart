import 'package:flutter/cupertino.dart';
import 'package:jiit_hub/screens/MyWork.dart';
// import 'HomePage.dart';
import 'package:flutter/material.dart';
// import 'package:jiit_hub/screens/HomePage.dart';
import 'package:jiit_hub/screens/SignupPage.dart';
import 'package:jiit_hub/responsive_constants.dart';
import 'package:jiit_hub/screens/Methods.dart';
import 'package:jiit_hub/screens/ExplorePage.dart';
import '../Constants.dart' as K;

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
            child: Padding(
              padding: const EdgeInsets.only(right: 55.0),
              child: Text(
                  "JIIT HUB",
              ),
            ),
        ),
          backgroundColor: Color.fromRGBO(29, 53, 87, 1),
      ),
      backgroundColor: Color.fromRGBO(231, 227, 238, 1),

      body: isLoading? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      )
          : SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white,
                    Colors.lightBlueAccent,
                    Color.fromRGBO(29, 53, 87, 1),
                  ],
                )
            ),
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
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.bold
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
                      child: Icon(CupertinoIcons.mail),
                    ),
                    Container(
                      width: Responsive.width(80, context),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          hintStyle: TextStyle(color: Colors.white)
                        ),
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.left,
                        controller: EnrollmentController,
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
                      child: Icon(CupertinoIcons.lock),
                    ),
                    Container(
                      width: Responsive.width(80, context),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white)
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
                          Navigator.push(context, MaterialPageRoute(builder: (_) => MyWork(indexx: 2)));
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
                                  Navigator.push(context, MaterialPageRoute(builder: (_) => MyWork(indexx: 2)));
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
                          style: TextStyle(fontSize: 20,color:Colors.white),
                        ),
                      ),
                    ),
                ],
                ),
                SizedBox(
                  height: Responsive.height(9.7, context),
                ),
             ],
            ),
            ),
          ),
    );
  }
}
