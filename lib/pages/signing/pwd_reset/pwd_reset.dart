import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:pick_asso_app/pages/signing/sign_home.dart';

//if pwd forgotten, sends a conf code to authorize a new password




class PasswordResetPage extends StatefulWidget {
  const PasswordResetPage({Key? key}) : super(key: key);

  @override
  _PasswordResetPageState createState() => _PasswordResetPageState();
}
class _PasswordResetPageState extends State<PasswordResetPage>{

  bool isRecoveryComplete = false;
  TextEditingController emailController = TextEditingController();
  String? _username = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text('Sign Up'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey, // for validating the fields
          child: Column(
            children: <Widget>[
              const Text('Enter your username',style: TextStyle(fontSize: 20),),
              TextFormField(
                  onSaved: (value) => _username = value,
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "Username")),
              ElevatedButton(child:  const Text("Send Reset Code"), onPressed: () async{
                final form = _formKey.currentState;
                if(form != null && _username != null){
                  form.save();
                  if (form.validate()){
                    try {
                      final result = await Amplify.Auth.resetPassword(username: '$_username');
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomePage()));
                    } catch (e) {print("error $e");}
                  }
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}