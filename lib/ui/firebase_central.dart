import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'pages/authentication/firebase_login.dart';
import 'pages/authentication/flutterfire_login.dart';
import 'pages/content_page.dart';

class FirebaseCentral extends StatelessWidget {
  const FirebaseCentral({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
      GoogleProvider(
          clientId:
              '846736122365-bp6n2uf9c18q6ar7vdhgae65r9v7cpn7.apps.googleusercontent.com'),
      // ... other providers
    ]);

    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const ContentPage();
        } else {
          //return const FirebaseLogIn(); // My implementation
          //return FlutterFireLogin(); // just the scaffold with a view
          return SignInScreen(); // fully implementes from flutterfire
        }
      },
    );
  }
}
