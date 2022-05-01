import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_firebase/view/size.dart';

class GetWidgets{

  final TextEditingController title = TextEditingController() ;

  Dialog addTodo(BuildContext context){
    return  Dialog(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: SizedBox(
        height: GetSize().getHeight(context) * 0.30,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children : [
              Text(
                "Add Your Work", 
                style: GoogleFonts.poppins(
                  fontSize: 20 ,
                  fontWeight: FontWeight.w500 ,
                ),
              ), 
              
              const SizedBox(height: 40,),

              TextFormField(
                      decoration: InputDecoration(
                        // hintText: "Tile For Work" ,
                        label: const Text("Title For Work"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      controller: title,
                    ),

              const SizedBox(height: 20,),
              
              SizedBox(
                  width: GetSize().getWidth(context),
                  child: ElevatedButton(
                  onPressed: (){}, 
                  child: const Padding(
                    padding:  EdgeInsets.symmetric(vertical: 20),
                    child:  Text("Add My Work"),
                  )))
            ]
          ),
        ),
      ),
    );
  }
}