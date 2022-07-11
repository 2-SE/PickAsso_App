import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:aws_flutter_01/login_page.dart';


class SignUpConfPage extends StatefulWidget {

  @override
  _SignUpConfPageState createState() => _SignUpConfPageState();


}
class _SignUpConfPageState extends State<SignUpConfPage> {
  final _formKey = GlobalKey<FormState>();
  String? _username = '';
  String? _confCode = '';



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
              child: Column(
                  children: <Widget>[
                    Text('Confirm Sign Up', style: TextStyle(fontSize: 20)),
                    TextFormField(
                      onSaved: (value) => _username = value,
                      decoration: InputDecoration(labelText: 'Username'),
                    ),
                    TextFormField(
                      onSaved: (value) => _confCode = value,
                      decoration:  InputDecoration(labelText: 'Confirmation Code'),
                    ),
                    ElevatedButton(child: Text("Confirm"), onPressed: () async{
                      final form = _formKey.currentState;
                      print('form: $_formKey');
                      if(form != null && _username != null && _confCode != null){
                      form.save();
                      if (form.validate()){
                          try {
                          final result = await Amplify.Auth.confirmSignUp(username: _username.toString(), confirmationCode: _confCode.toString());
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                          } catch (e) {print("error $e");}
                          }
                      }
                    })
                  ]
              )
          )
      )
    );
  }
}