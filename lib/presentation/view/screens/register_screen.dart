import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:eye_test/presentation/view/widgets/form_field.dart';
import 'package:eye_test/presentation/view/widgets/main_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Text(
              "Hello! Sign Up to get started",
              style: getBoldStyle(
                  color: AppColors.black, fontSize: context.height * 0.045),
            ),
            SizedBox(
              height: context.height * 0.04,
            ),
            defualtFormField(context,
                controller: usernameController,
                validate: () {},
                hint: "Username",
                type: TextInputType.name,
                width: double.infinity),
            SizedBox(
              height: context.height * 0.03,
            ),
            defualtFormField(context,
                controller: emailController,
                validate: () {},
                hint: "Email",
                type: TextInputType.emailAddress,
                width: double.infinity),
            SizedBox(
              height: context.height * 0.03,
            ),
            defualtFormField(
              context,
              controller: passwordController,
              validate: () {},
              hint: "Password",
              type: TextInputType.text,
              width: double.infinity,
            ),
            SizedBox(
              height: context.height * 0.03,
            ),
            defualtFormField(context,
                controller: confirmpasswordController,
                validate: () {},
                hint: "Confirm password",
                type: TextInputType.text,
                width: double.infinity),
            SizedBox(
              height: context.height * 0.04,
            ),
            mainButton(context,
                onpressd: () {},
                background: AppColors.primary,
                text: "Sign Up"),
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
                  "Already have an account?",
                  style: getRegularStyle(
                      color: AppColors.black, fontSize: context.height * 0.024),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login Now",
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
