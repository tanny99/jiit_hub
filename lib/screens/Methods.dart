import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<User?> createAccount(String email, String enroll, String password) async{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    User? user = (await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password
    )).user;

    if(user != null){
      print("Login Successful!");
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

Future logOut() async {

  FirebaseAuth _auth = FirebaseAuth.instance;

  try{
    await _auth.signOut();
  }catch(e) {
    print("error");
  }
}