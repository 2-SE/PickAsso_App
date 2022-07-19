import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';


import 'package:pick_asso_app/pages/signing/sign_home.dart';
import 'package:pick_asso_app/pages/Calendar/month.dart';

import 'amplifyconfiguration.dart';
import 'utils/global_vars.dart';


void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));

}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TableCalendar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();


}

class _StartPageState extends State<StartPage> {

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
    }on Exception catch(e){print('config error :::::::::::  $e');}

  }


  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: isLoggedIn ?  const MonthView() : const HomePage(),

    );
  }
}