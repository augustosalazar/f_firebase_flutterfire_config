import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'pages/authentication/flutterfire_login.dart';
import 'pages/content_page.dart';

class FirebaseCentral extends StatelessWidget {
  const FirebaseCentral({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
      // ... other providers
    ]);

    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const ContentPage();
        } else {
          //return const FirebaseLogIn();   // My implementation
          return FlutterFireLogin(); // just the scaffold with a view
          // return SignInScreen(   // fully implementes from flutterfire
          //   actions: [
          //     AuthStateChangeAction<SignedIn>((context, state) {
          //       Navigator.pushReplacementNamed(context, '/profile');
          //     }),
          //   ],
          // );
        }
      },
    );
  }
}
