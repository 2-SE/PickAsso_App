import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

import 'login_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button'),
      ),

      body: const Center(child: Text('Press the button below!')),
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
    );
  }
}