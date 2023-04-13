import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import '../domain/controller/authentication_controller.dart';
import '../domain/controller/chat_controller.dart';
import '../domain/controller/firestore_controller.dart';
import '../util/label_overrides.dart';
import 'firebase_central.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FirestoreController());
    Get.put(ChatController());
    Get.put(AuthenticationController());

    return GetMaterialApp(
        localizationsDelegates: [
          // Creates an instance of FirebaseUILocalizationDelegate with overridden labels
          FirebaseUILocalizations.withDefaultOverrides(const LabelOverrides()),

          // Delegates below take care of built-in flutter widgets
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,

          // This delegate is required to provide the labels that are not overridden by LabelOverrides
          FirebaseUILocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        title: 'Firebase demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirebaseCentral());
  }
}
