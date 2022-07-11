import 'package:aws_flutter_01/Password_reset_page.dart';
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'home.dart';
import 'package:aws_flutter_01/SignUp_page.dart';
import 'package:aws_flutter_01/Password_recovery_page.dart';





class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage>{

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          try{
            Amplify.Auth.signOut(options: SignOutOptions(globalSignOut: true));
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
          }catch(e){print("error:$e");};
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.logo_dev_rounded),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey, // for validating the fields
          child: Column(
            children: <Widget>[

              const Text('Login Information', style: TextStyle(fontSize: 20),),

              TextFormField(
                  onSaved: (value) => _username= value,
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "Username")),
              TextFormField(
                  onSaved: (value) => _password=value.toString(),
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "Password")),

              ElevatedButton(child: const Text("Login"), onPressed: () async{
                final form = _formKey.currentState;
                print('form: $_formKey');
                if(form != null && _username != null && _password != null){
                  form.save();
                  if (form.validate()){
                    try {
                      final result = await Amplify.Auth.signIn(username: _username.toString(), password: _password.toString());
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    }  catch (e) {
                      print("error $e");
                    }
                  }
                }
              }),

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
                      child: TextButton(child: const Text("Recover Password"),
                        style: TextButton.styleFrom(primary: Colors.grey, fixedSize: Size.fromWidth(100)),
                        onPressed: () async{
                         Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordResetPage()));
                      }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}