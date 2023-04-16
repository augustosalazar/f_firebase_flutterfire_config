import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class FlutterFireLogin extends StatelessWidget {
  const FlutterFireLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: LoginView(
      action: AuthAction.signUp,
      providers: FirebaseUIAuth.providersFor(
        FirebaseAuth.instance.app,
      ),
    )));
  }
}
