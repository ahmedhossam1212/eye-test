import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/app_string.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/presentation/view/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.white),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            SizedBox(
              height: context.height * 0.01,
            ),
            Text(
              AppString.appName,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 30,
                fontFamily: "RampartOne",
              ),
            )
          ],
        )),
      ),
    );
  }
}
