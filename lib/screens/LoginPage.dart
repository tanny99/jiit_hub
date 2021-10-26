import 'package:flutter/cupertino.dart';
import 'HomePage.dart';
import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/HomePage.dart';
import 'package:jiit_hub/screens/SignupPage.dart';
import 'Constants.dart' as K;
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:jiit_hub/responsive_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

TextEditingController EnrollmentController=TextEditingController();
TextEditingController PasswordController=TextEditingController();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _enrollmentNo="";
  String? _password="";

  checkAuthentification() async{
    _auth.onAuthStateChanged.listen((user){
      if(user != null)
        {
          Navigator.push(context, MaterialPageRoute(builder: context)=>HomePage());
        }
    });
  }

  @override
  void initState()
  {
    super.initState();
    this.checkAuthentification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title:Center(child: Text('JIIT HUB!')),
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
              child: Text('Login!',style: K.style1,textAlign: TextAlign.center),
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
                      'Login',
                      style: TextStyle(fontSize: 20,),
                    ),
                    onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
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
            )



          ],

        ),
      ),
    );
  }
}
