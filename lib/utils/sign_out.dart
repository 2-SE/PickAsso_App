import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

import 'package:pick_asso_app/pages/signing/sign_home.dart';

import 'global_vars.dart';


//sign out button template, cant implement so you see it often in the code

class SignOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: () {
          try {
            isLoggedIn = false;
            Amplify.Auth.signOut(options: SignOutOptions(globalSignOut: true));
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          } catch (e) {
            print("error:$e");
          };
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.logout_rounded),
      ),
    );
  }
}