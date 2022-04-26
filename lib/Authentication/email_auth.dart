
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/home.dart';

class EmailPasswordAuth{

  final _auth = FirebaseAuth.instance ;

  // Sign In With Email and Password
  signInWithEmail(BuildContext context,String email , String pass) async{

    if(_auth.currentUser == null){
      try {
        UserCredential user = await _auth.signInWithEmailAndPassword(email: email, password: pass);
        if(user != null){
          // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage(userCredential: user)), (route) => false);
        }
      } catch (e) {
        print(e) ; 
      }
    }
  }


  // Sign Up With Email and Password 
  signUpEmail(BuildContext context , String email , String pass)async{
    
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: pass) ;
      if(userCredential != null){
        // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage(userCredential: userCredential)), (route) => false) ;
      }
    } catch (e) {
      print(e) ;
    }
  }

}