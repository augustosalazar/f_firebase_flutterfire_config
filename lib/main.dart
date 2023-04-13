import 'package:f_firebase_flutterfire_config/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'ui/my_app.dart';

void main() async {
  // this is the key
  WidgetsFlutterBinding.ensureInitialized();
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
