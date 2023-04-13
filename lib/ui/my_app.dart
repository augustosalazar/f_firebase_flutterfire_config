import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../domain/controller/authentication_controller.dart';
import '../domain/controller/chat_controller.dart';
import '../domain/controller/firestore_controller.dart';
import 'firebase_central.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FirestoreController());
    Get.put(ChatController());
    Get.put(AuthenticationController());

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Firebase demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirebaseCentral());
  }
}
