import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/view/pop_widget.dart';

class HomePage extends StatelessWidget {
  final User? user ;
  const HomePage({ Key? key , required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height ;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                // color: Colors.black54,
                width: width,
                height: height * 0.85,
                child: Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Todo", 
                      style: GoogleFonts.poppins(
                        fontSize : 60, 
                        color: Colors.teal[700],
                        fontWeight: FontWeight.w600
                      )),
                      Text(
                        "Work", 
                      style: GoogleFonts.poppins(
                        fontSize : 30, 
                        fontWeight: FontWeight.w600,
                        color: Colors.teal[700]
                      )), 
        
                      TodoWork(height: height,width: width,)
                    ],
                  ),
                ),
              ),
        
              SizedBox(
                width: width * 0.90,
                height: (height - height*0.85) * 0.6,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal.shade700,
                    textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                  ),
                  onPressed: (){
                    showDialog(context: context, builder: (BuildContext context) => GetWidgets().addTodo(context)) ;
                  }, 
                  icon : const Icon(CupertinoIcons.add),
                   label:  const Text("Add My Task")),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TodoWork extends StatelessWidget {
  final double height  ;
  final double width; 
  const TodoWork({ Key? key , required this.height , required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double upperHeight = height*0.85; 
    return Container(
      color: Colors.teal[700],
      height: upperHeight*0.78 ,
    );
  }
}