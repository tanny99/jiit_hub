import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/SignupPage.dart';
import 'Constants.dart' as K;
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:jiit_hub/responsive_constants.dart';

TextEditingController EnrollmentController=TextEditingController();
TextEditingController PasswordController=TextEditingController();

class FrontScreen extends StatefulWidget {
  @override
  _FrontScreenState createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title:Center(child: Text('JIIT HUB!')),
              backgroundColor: Colors.brown,
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: Container(
                child: Image(image: AssetImage('Assets/jiit_logo.jpg'),),
              ),
            ),
            SizedBox(
              height: Responsive.height(5, context),
            ),
            Container(
              child: Text('Login!',style: K.style1,textAlign: TextAlign.center),
            ),
            SizedBox(
              height: Responsive.height(5, context),
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
                          hintText: "Password"
                      ),
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.left,
                      controller: PasswordController,

                    ),
                  ),
                ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0,right: 50),
                    child: Text('Not registered?'),
                  ),
                ),

              ],
            )



          ],

        ),
      ),
    );
  }
}
