// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:todo_firebase/Authentication_Scr/login.dart';
// import 'package:todo_firebase/home.dart';

// class Wrapper extends StatefulWidget {
//   const Wrapper({ Key? key }) : super(key: key);

//   @override
//   State<Wrapper> createState() => _WrapperState();
// }

// class _WrapperState extends State<Wrapper> {

//   final _auth = FirebaseAuth.instance ;
//   Widget currentScr= LoginPage() ;

//   @override
//   void initState() {
//     _auth.authStateChanges().listen((User? user){
//       if(user == null){
//         currentScr = LoginPage() ;
//       }else{
//         currentScr = HomePage(user: user) ;
//       }
//     });
//     super.initState();


//   }

//   @override
//   Widget build(BuildContext context) {
//     return currentScr;
//   }
// }