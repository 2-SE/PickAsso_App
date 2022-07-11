import 'package:aws_flutter_01/home.dart';
import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';






class RecoveryPage extends StatefulWidget {
  const RecoveryPage({Key? key}) : super(key: key);

  @override
  _RecoveryPageState createState() => _RecoveryPageState();
}
class _RecoveryPageState extends State<RecoveryPage>{
  bool isRecoveryComplete = false;
  /*use of textControllers instead of textformfields in this case because userAttributes doesnt
  work with types
   */
  TextEditingController emailController = TextEditingController();
  String? _username = '';
  String? _password = '';
  String? _confCode = '';
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
              TextFormField(
                  onSaved: (value) => _password = value,
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "Password")),
              TextFormField(
                  onSaved: (value) => _confCode = value,
                  obscureText: false,
                  decoration: const InputDecoration(labelText: "Code")),
              ElevatedButton(child:  const Text("Renew password"), onPressed: () async{
                final form = _formKey.currentState;
                if(form != null && _username != null && _password != null && _confCode != null){
                  form.save();
                  if (form.validate()){
                    try {
                      final result = await Amplify.Auth.confirmResetPassword(username: '$_username', newPassword: '$_password', confirmationCode: '$_confCode');
                      Navigator.push(context, MaterialPageRoute(builder:  (context) => HomePage()));
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