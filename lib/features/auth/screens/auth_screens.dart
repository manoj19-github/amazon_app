import 'package:amazon/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:amazon/constants/global_variables.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthStateScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthStateScreen({super.key});

  @override
  State<AuthStateScreen> createState() => _AuthStateScreenState();
}

class _AuthStateScreenState extends State<AuthStateScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isSignup = false;
  var _username;
  var _email;
  var _password;
  void saveFormHandler(){
      if (_formKey.currentState!.validate()) {
        
        _formKey.currentState!.save();
        if(isSignup==true){
          var payload={
            'email':_email,
            'password':_password,
            'username':_username
          };
          print(payload);
          
        }else{
          var payload={
            'email':_email,
            'password':_password
          };
          print(payload);
        }

      }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.only(top: 80, left: 8, right: 8),
                child:SingleChildScrollView( child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const SizedBox(height:20),
                    Image.asset("assets/images/appLogo.png",
                        height: 125, width: 155),
                    Text(
                      "Welcome to Bazzar",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w800),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              const SizedBox(height: 45),
                              isSignup ?
                              SizedBox(
                                height: 60,
                                child: TextFormField(
                                    maxLength: 50,
                                    decoration: const InputDecoration(
                                      label: Text('Name'),
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      contentPadding: EdgeInsets.only(
                                          left: 10.0, top: 7, bottom: 7),
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 1 ||
                                          value.trim().length > 50)
                                        return 'Must be between 1 to 50 character';
                                    },
                                    onSaved: (value) {
                                      _username = value;
                                    }),
                              ):Container(),
                              const SizedBox(height: 10),
                              SizedBox(
                                height: 80,
                                child: TextFormField(
                         
                                    decoration: const InputDecoration(
                                      label: Text('Email'),
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      contentPadding: EdgeInsets.only(
                                          left: 10.0, top: 7, bottom: 7),
                                    ),
                                    validator: (value) =>checkEmailFormat(value),
                                    onSaved: (value) {
                                      _email = value;
                                    }),
                              ),
                                    const SizedBox(height: 10),
                               SizedBox(
                                height: 80,
                                child: TextFormField(
                                  obscureText: true,
                                  obscuringCharacter: '*',

                         
                                    decoration: const InputDecoration(
                                      label: Text('Password'),
                  
                                      
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      contentPadding: EdgeInsets.only(
                                          left: 10.0, top: 7, bottom: 7),
                                    ),
                                    validator: (value){
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.trim().length <= 5 ||
                                          value.trim().length > 20)
                                        return 'Must be between 5 to 20 character';
                                    
                                    },
                                    onSaved: (value) {
                                      _password = value;
                                }),
                              ),
                           
                               const SizedBox(height: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.fromHeight(40),),
                        onPressed: saveFormHandler,
                        child: const Text('Submit',style:TextStyle(color:Colors.white,fontSize: 18),),),
                           const SizedBox(height: 10),
                              isSignup ? 
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Text("Already Sign up!  ",style:TextStyle(color: Colors.grey,fontSize: 19)),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      isSignup = false;
                                    });
                                  },
                                  child:    Text("Sign in",style:TextStyle(color: Colors.indigo,fontSize: 19),),
                                )
                            


                              ],):Row(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Text("Are you Sign up!  ",style:TextStyle(color: Colors.grey,fontSize: 19)),
                                InkWell(
                                  onTap:(){
                                    setState(() {
                                      isSignup = true;
                                    });
                                  },
                                  child:   Text("Sign up",style:TextStyle(color: Colors.indigo,fontSize: 19),),
                                ),],),


                             
                              


                            ],
                          )),
                    ),
                  ],
                ),),
               ),),
      ),
    );
  }
}
