import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:todo_firebase/Authentication/email_auth.dart';
import 'package:todo_firebase/Authentication_Scr/login.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({ Key? key }) : super(key: key);

  final TextEditingController _email = TextEditingController() ;
  final TextEditingController _pass = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty ){
                          return "Enter Email" ;
                        }
                        if(!value.contains("@")){
                          return "Enter Valid Email" ;
                        }
                              
                        return null ;
                      },
                      controller: _email,
                      keyboardType: TextInputType.emailAddress ,
                      decoration: const InputDecoration(
                        labelText: "Email Address",
                        border: OutlineInputBorder(),
                        icon: Icon(CupertinoIcons.mail) , 
                        hintText: "Email Address" 
                      ),
                    ),
                              
                    const SizedBox(height: 30,),
                              
                    TextFormField(
                      validator: (pass){
                        if(pass!.length < 6){
                          return "Password should have more than 6 letters" ;
                        } 
                        return null ;
                      },
                      controller: _pass,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        icon: Icon(CupertinoIcons.lock) , 
                        hintText: "Password" 
                      ),
                    ) ,
                              
                    const SizedBox(height: 40,) ,
                              
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: (){
                          if(_formkey.currentState!.validate()){
                            // EmailPasswordAuth().signUpEmail(context, _email.toString(), _pass.toString());
                            print("signUp");
                          
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                          "Sign Up" ,
                          style: TextStyle(
                            fontWeight: FontWeight.w800 , 
                            fontSize: 20
                          ),
                        ),
                      )),
                    )
                  ],
                ),
              ),
            ),
              
            const SizedBox(height: 5,),
              
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20,),
                const Text(
                  "Already Have Account ? " , 
                  style: TextStyle(
                    color: Colors.black38 , 
                    fontWeight: FontWeight.w800 
                  ),
                ) , 
              
                InkWell(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginPage()), (route) => false) ;
                  },
                  child: const Text(
                    " Click here " , 
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ) , 
              
              ],
            )
          ],
        ),
      ),
    );
  }
}