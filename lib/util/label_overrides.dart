import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';

class LabelOverrides extends DefaultLocalizations {
  const LabelOverrides();

  //from FirebaseUILocalizationLabels

  @override
  String get confirmPasswordInputLabel => 'Confirmar la constraseña';

  @override
  String get registerText => 'Registrarse';

  @override
  String get registerHintText => 'No tiene una cuenta?';

  @override
  String get signInHintText => 'Ya tiene una cuenta?';

  @override
  String get forgotPasswordButtonLabel => 'Ovido la contraseña?';

  @override
  String get emailInputLabel => 'Ingrese su email';

  @override
  String get passwordInputLabel => 'Ingrese su contraseña';

  @override
  String get registerActionText => 'Crear usuario';
}
