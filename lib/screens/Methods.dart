import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jiit_hub/screens/LoginPage.dart';

Future<User?> createAccount(String email, String enroll, String password) async{

  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    User? user = (await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password
    )).user;

    if(user != null){
      print("Account Creation Successful!");
      return user;
    } else{
      print("Account creation failed");
      return user;
    }
  }catch(e){
    print(e);
    return null;
  }
}

Future<User?> LogIn(String enroll, String password) async {

  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    User? user = (await _auth.signInWithEmailAndPassword(
        email: enroll,
        password: password
    )).user;

    if(user != null) {
      print("Login Successful");
      return user;
    }else {
      print("Login Failed");
      return user;
    }
  }catch(e){
      print(e);
      return null;
  }
}

Future logOut(BuildContext context) async {

  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    await _auth.signOut()
    .then((user) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
    });
  }catch(e) {
    print("error");
  }
}