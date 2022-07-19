import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:pick_asso_app/pages/Calendar/month.dart';

import 'SignUp/signUp.dart';
import 'pwd_reset/pwd_reset.dart';

import 'package:pick_asso_app/utils/global_vars.dart';


//main page for logging in
//redirects towards signup, pwd recover and main page
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{

  final _formKey = GlobalKey<FormState>();
  String? _password='';
  String? _username='';


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title:const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey, // for validating the fields
          child: Column(
            children: <Widget>[

              const Text('Login Information', style: TextStyle(fontSize: 20),),
              //Get user info for sign in
              TextFormField(
                  onSaved: (value) => _username= value,
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "Username")),
              TextFormField(
                  onSaved: (value) => _password=value.toString(),
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "Password")),


              //validate and login with pre-info loaded into formKey
              ElevatedButton(child: const Text("Login"), onPressed: () async{
                final form = _formKey.currentState;
                if(form != null && _username != null && _password != null){
                  form.save();
                  if (form.validate()){
                    try {
                      final result = await Amplify.Auth.signIn(
                          username: _username.toString(),
                          password: _password.toString()
                      );
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MonthView()));
                    }  catch (e) {
                      print("error $e");
                    }
                  }
                }
              }),

              //signup and recovery widgets
              Row(
                children: <Widget>[
                  Expanded(
                    child: Align(alignment:  Alignment.centerLeft,
                      child: TextButton(child: Text("Sign Up"),
                          style: TextButton.styleFrom(primary: Colors.grey, fixedSize: Size.fromWidth(100)),
                          onPressed: () async{
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                          }),
                    ),
                  ),


                  Expanded(
                    child: Align(alignment: Alignment.centerRight ,
                      child: TextButton(
                          style: TextButton.styleFrom(primary: Colors.grey, fixedSize: Size.fromWidth(100)),
                          onPressed: () async{
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordResetPage()));
                          }, child: const Text("Recover Password")),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

          floatingActionButton: FloatingActionButton(
            onPressed: () {
              try{
                isLoggedIn = false;
                Amplify.Auth.signOut(options: SignOutOptions(globalSignOut: true));
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              }catch(e){print("error:$e");};
            },
            backgroundColor: Colors.green,
            child: const Icon(Icons.logout_rounded),
          ),

/*
              Align(
                alignment: Alignment.bottomCenter,
                child :TextButton(child: const Text("Contact us"),
                style: TextButton.styleFrom(primary: Colors.grey, fixedSize: Size.fromWidth(100)),
                onPressed: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
                },
                ),
              ),*/

    );
  }
}