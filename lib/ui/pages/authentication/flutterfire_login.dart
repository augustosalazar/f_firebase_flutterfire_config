import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class FlutterFireLogin extends StatelessWidget {
  const FlutterFireLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
          child: LoginView(
            action: AuthAction.signIn,
            providers: FirebaseUIAuth.providersFor(
              FirebaseAuth.instance.app,
            ),
          ),
        )));
  }
}
