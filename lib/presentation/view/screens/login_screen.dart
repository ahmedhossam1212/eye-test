import 'package:enefty_icons/enefty_icons.dart';
import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:eye_test/presentation/view/screens/forget_password_screen.dart';
import 'package:eye_test/presentation/view/screens/register_screen.dart';
import 'package:eye_test/presentation/view/widgets/form_field.dart';
import 'package:eye_test/presentation/view/widgets/main_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPassword = true;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Text(
              "Welcome back! Glad to see you, Again!",
              style: getBoldStyle(
                  color: AppColors.black, fontSize: context.height * 0.045),
            ),
            SizedBox(
              height: context.height * 0.04,
            ),
            defualtFormField(context,
                controller: emailController,
                validate: () {},
                hint: "Enter your email",
                type: TextInputType.emailAddress,
                width: double.infinity),
            SizedBox(
              height: context.height * 0.03,
            ),
            defualtFormField(context,
                controller: passwordController,
                validate: () {},
                hint: "Enter your password",
                type: TextInputType.emailAddress,
                width: double.infinity,
                suffix: IconButton(
                  onPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  icon: Icon(
                    isPassword
                        ? EneftyIcons.eye_outline
                        : EneftyIcons.eye_slash_outline,
                    color: AppColors.grey,
                  ),
                ),
                isPassword: isPassword),
            SizedBox(
              height: context.height * 0.01,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPassword(),
                        ));
                  },
                  child: Text(
                    "Forget Password?",
                    style: getMediumStyle(
                        color: AppColors.grey, fontSize: context.height * 0.02),
                  )),
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            mainButton(context,
                onpressd: () {}, background: AppColors.primary, text: "Login"),
            SizedBox(
              height: context.height * 0.035,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  color: AppColors.grey,
                  height: 1,
                )),
                Text(
                  " Or Login with ",
                  style: getBoldStyle(
                      color: AppColors.grey, fontSize: context.height * 0.025),
                ),
                Expanded(
                    child: Container(
                  color: AppColors.grey,
                  height: 1,
                )),
              ],
            ),
            SizedBox(
              height: context.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: context.height * 0.08,
                  width: context.width * 0.25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.lightGrey,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset("assets/images/facebook.png"),
                ),
                SizedBox(
                  width: context.width * 0.03,
                ),
                Container(
                  height: context.height * 0.08,
                  width: context.width * 0.25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.lightGrey,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset("assets/images/google.png"),
                ),
                SizedBox(
                  width: context.width * 0.03,
                ),
                Container(
                  height: context.height * 0.08,
                  width: context.width * 0.25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.lightGrey,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset("assets/images/apple.png"),
                ),
              ],
            ),
            SizedBox(
              height: context.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: getRegularStyle(
                      color: AppColors.black, fontSize: context.height * 0.024),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ));
                    },
                    child: Text(
                      "Sign Up Now",
                      style: getBoldStyle(
                          color: AppColors.grey,
                          fontSize: context.height * 0.024),
                    ))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
