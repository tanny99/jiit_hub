import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'Constants.dart' as K;
import 'package:flutter/cupertino.dart';
import 'package:jiit_hub/responsive_constants.dart';

TextEditingController EnrollmentController=TextEditingController();
TextEditingController PasswordController=TextEditingController();

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
                child: Image(image: AssetImage('Assets/jiit_logo.jpg'),),
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
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blueGrey[800],
                    child: Text(
                        'Sign Up',
                      style: TextStyle(fontSize: 20),
                    ),

                    onPressed: () {
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
