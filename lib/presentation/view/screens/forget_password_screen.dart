import 'package:enefty_icons/enefty_icons.dart';
import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:eye_test/presentation/view/screens/login_screen.dart';
import 'package:eye_test/presentation/view/widgets/form_field.dart';
import 'package:eye_test/presentation/view/widgets/main_button.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(EneftyIcons.arrow_left_3_outline)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password?",
                style: getBoldStyle(color: AppColors.black, fontSize: 25),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              Text(
                "Don't worry! It occurs. Please enter the email address linked with your account.",
                style: getRegularStyle(color: AppColors.grey, fontSize: 18),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              defualtFormField(context,
                  controller: emailController,
                  validate: () {},
                  hint: "Enter your email",
                  type: TextInputType.emailAddress,
                  width: double.infinity),
              SizedBox(
                height: context.height * 0.04,
              ),
              mainButton(context,
                  onpressd: () {},
                  background: AppColors.primary,
                  text: "Send Code"),
              SizedBox(
                height: context.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember Password?",
                    style: getRegularStyle(
                        color: AppColors.black,
                        fontSize: context.height * 0.024),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ));
                      },
                      child: Text(
                        "Sign in",
                        style: getBoldStyle(
                            color: AppColors.grey,
                            fontSize: context.height * 0.024),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
