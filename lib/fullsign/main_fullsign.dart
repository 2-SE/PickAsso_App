  import 'package:flutter/material.dart';
  import 'package:amplify_flutter/amplify_flutter.dart';
  import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

  import './../amplifyconfiguration.dart';

  import 'login_page.dart';


  //before running project make sure to run "amplify init" and run "flutter pub get"


  void main(){

    runApp(const myApp());
  }
  // the ui of the app
  class myApp extends StatefulWidget {
    const myApp({Key? key}): super(key: key);

    @override
    State<myApp> createState() => _MyAppState();
  }
  class _MyAppState extends State<myApp>{

    @override
    void initState(){
      super.initState();
      _configureAmplify();
    }

    Future<void> _configureAmplify() async{
      final auth = AmplifyAuthCognito();
      await Amplify.addPlugin(auth);


      try{
        await Amplify.configure(amplifyconfig);
      }on Exception catch(e){print('config error $e');}
    }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LoginPage(),
      );
    }
  }