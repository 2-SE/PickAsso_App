import 'dart:ffi';

import 'package:aws_flutter_01/login_page.dart';
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'SignUp_conf_page.dart';





class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage>{
  bool isSignUpComplete = false;
  /*use of textControllers instead of textformfields in this case because userAttributes doesnt
  work with types
   */
  TextEditingController emailController = TextEditingController();
  String? _username = '';
  String? _password = '';
  String _domain = '';
  String? _email = '';


  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Sign Up'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey, // for validating the fields
          child: Column(
            children: <Widget>[
              Text('Enter your information',style: TextStyle(fontSize: 20),),
              TextFormField(
                  onSaved: (value) => _username = value,
                  obscureText: false,
                  decoration: InputDecoration(labelText: "Username")),
              TextFormField(
                  onSaved: (value) => _password = value,
                  obscureText: false,
                  decoration: InputDecoration(labelText: "Password")),
              TextField(
                  controller: emailController,
                  onChanged: (value) => _email = value,
                  obscureText: false,
                  decoration: InputDecoration(labelText: "Email")),

              ElevatedButton(child: Text("Send Confirmation Code"), onPressed: () async{
                final form = _formKey.currentState;

                _domain = _email!.substring(_email!.length - 7);

                Map<CognitoUserAttributeKey, String> userAttributes = {CognitoUserAttributeKey.email: emailController.text};

                if(_domain != "esme.fr" ) {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Invalid email'),
                      content: const Text('email adress must be esme.fr domain name'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                          ),
                      ],
                    ),
                    );
                    }
                else if (form != null && _username != null && _password != null && emailController.text != '') {
                    form.save();
                    if (form.validate()) {
                      try {
                        print(emailController.toString());
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