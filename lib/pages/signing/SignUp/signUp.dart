import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import '../SignUp/SignUpConf.dart';


//upon sign up, users get sent a conf code to their email address

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage>{
  bool isSignUpComplete = false;
  
  TextEditingController emailController = TextEditingController(); //different type because email wouldnt work
  String? _username = '';
  String? _password = '';
  String _domain = '';
  String? _email = '';


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
              const Text('Enter your information',style: TextStyle(fontSize: 20),),
              TextFormField(
                  onSaved: (value) => _username = value,
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "Username")),
              TextFormField(
                  onSaved: (value) => _password = value,
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "Password")),
              TextField(
                  controller: emailController,
                  onChanged: (value) => _email = value,
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "Email")),

              ElevatedButton(child: const Text("Send Confirmation Code"), onPressed: () async{
                final form = _formKey.currentState;

                _domain = _email!.substring(_email!.length - 7);

                Map<CognitoUserAttributeKey, String> userAttributes =
                {CognitoUserAttributeKey.email: emailController.text};


                // confirm appropirate email address
               if(_domain != "esme.fr" ) {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Invalid email'),
                      content: const Text('email address must be esme.fr domain name'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                }



                //if OK sign up new user  NEED TO CHECK WITH DATABASE FOR EXISTING USER
                if (form != null && _username != null && _password != null && emailController.text != '') {
                  form.save();
                  if (form.validate()) {
                    try {
                      final result = await Amplify.Auth.signUp(
                          username: _username.toString(),
                          password: _password.toString(),
                          options: CognitoSignUpOptions(userAttributes: userAttributes)
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpConfPage()));
                    } catch (e) {
                      print("error $e");
                    }
                  }
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}