import 'package:eye_test/presentation/view/screens/forget_password_screen.dart';
import 'package:eye_test/presentation/view/screens/new_password_screen.dart';
import 'package:eye_test/presentation/view/screens/otp_screen.dart';
import 'package:eye_test/presentation/view/screens/password_changed_screen.dart';
import 'package:eye_test/presentation/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PasswordChangedScreen(),
    );
  }
}
