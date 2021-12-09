import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jiit_hub/screens/LoginPage.dart';
import 'package:jiit_hub/screens/Methods.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';
import 'package:jiit_hub/responsive_constants.dart';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart' as http;
import '../Constants.dart' as K;

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController EmailController=TextEditingController();
  final TextEditingController EnrollmentController=TextEditingController();
  final TextEditingController PasswordController=TextEditingController();
  bool isLoading = false;
  bool _isValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 55),
          child: Center(
              child: Text(
                "JIIT HUB",
              )),
        ),
        backgroundColor: Color.fromRGBO(29, 53, 87, 1),
      ),
      backgroundColor: Colors.white,
      body: isLoading
          ? Center(
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
              child: Text('Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                  ),
                  textAlign: TextAlign.center),
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
                        hintText: "Email Address",
                      hintStyle: TextStyle(color: Colors.white)
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
                          hintText: "Enrollment Number",
                          hintStyle: TextStyle(color: Colors.white)
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
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(29, 53, 87, 1))),
                    child: Text(
                      'SignUp',
                      style: TextStyle(fontSize: 20,),
                    ),
                    onPressed: () {
                      _isValid = EmailValidator.validate(EmailController.text);
                        if(!(_isValid)){
                          Fluttertoast.showToast(
                              msg: 'Enter a Valid Email',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.TOP,
                              timeInSecForIosWeb: 1,
                              fontSize: 16.0);
                        }
                        else if(!EmailController.text.contains('@mail.jiit.ac.in')){
                          Fluttertoast.showToast(
                              msg: 'Enter a Valid Email',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.TOP,
                              timeInSecForIosWeb: 1,
                              fontSize: 16.0);

                        }
                        else if(EmailController.text.isNotEmpty &&
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
                SizedBox(
                  height: Responsive.height(9.45, context),
                )
          ],
        ),
        ),
      ),
    );
  }
}
