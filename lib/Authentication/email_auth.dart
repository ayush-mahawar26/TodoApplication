
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/home.dart';

class EmailPasswordAuth{

  final _auth = FirebaseAuth.instance ;

  _showSnackBar(String errorName , BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorName)));
  }


  // Sign In With Email and Password
  void signInWithEmail(BuildContext context,String email , String pass) async{

    if(_auth.currentUser == null){
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: pass);
        if(userCredential != null){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage(user: userCredential.user)), (route) => false);
        }
      } catch (e) {
        FocusScope.of(context).unfocus();
        if(e.toString().contains("user-not-found")){
          _showSnackBar("No user Exist", context) ;
        }else if(e.toString().contains("invalid-password") || e.toString().contains("invalid-email")){
          _showSnackBar("Invalid Credentials", context) ;
        }else{
          _showSnackBar(e.toString(), context);
        }
      }
    }
  }


  // Sign Up With Email and Password 
  void signUpEmail(BuildContext context , String email , String pass)async{
    
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: pass) ;
      if(userCredential != null){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomePage(user: userCredential.user,)), (route) => false) ;
      }
    } catch (e) {
      FocusScope.of(context).unfocus();
      if(e.toString().contains("already-exist")){
          _showSnackBar("User Already Exist", context) ;
        }else{
          _showSnackBar(e.toString(), context);
        }
    }
  }

}