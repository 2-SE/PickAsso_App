import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:pick_asso_app/pages/signing/sign_home.dart';


//after sign up, to enter the code you received



class SignUpConfPage extends StatefulWidget {
  const SignUpConfPage({Key? key}) : super(key: key);


  @override
  _SignUpConfPageState createState() => _SignUpConfPageState();


}
class _SignUpConfPageState extends State<SignUpConfPage> {
  final _formKey = GlobalKey<FormState>();
  String? _username = '';
  String? _confCode = '';
  String? _password = '';



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Sign Up Confirmation'),
        ),
        body: Container(
            padding: EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: Column(
                    children: <Widget>[
                      Text('Check your email for confirmation code', style: TextStyle(fontSize: 20)),
                      TextFormField(
                        onSaved: (value) => _username = value,
                        decoration: InputDecoration(labelText: 'Username'),
                      ),
                      TextFormField(
                        onSaved: (value) => _confCode = value,
                        decoration:  InputDecoration(labelText: 'Confirmation Code'),
                      ),
                      TextFormField(
                        onSaved: (value) => _password = value,
                        decoration:  InputDecoration(labelText: 'password'),
                      ),
                      ElevatedButton(child: Text("Confirm"), onPressed: () async{
                        final form = _formKey.currentState;
                        print('form: $_formKey');
                        if(form != null && _username != null && _confCode != null && _password != null){
                          form.save();
                          if (form.validate()){
                            try {
                              final result = await Amplify.Auth.confirmSignUp(username: _username.toString(), confirmationCode: _confCode.toString());
                              Amplify.Auth.signIn(username: _username.toString(), password: _password.toString());
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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