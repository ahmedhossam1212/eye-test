import 'package:enefty_icons/enefty_icons.dart';
import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:eye_test/presentation/view/widgets/form_field.dart';
import 'package:eye_test/presentation/view/widgets/main_button.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create New Password",
              style: getBoldStyle(color: AppColors.black, fontSize: 25),
            ),
            SizedBox(
              height: context.height * 0.03,
            ),
            Text(
              "Your new password must be unique from those previously used.",
              style: getRegularStyle(color: AppColors.grey, fontSize: 18),
            ),
            SizedBox(
              height: context.height * 0.04,
            ),
            defualtFormField(context,
                controller: newPasswordController,
                validate: () {},
                hint: "New Password",
                type: TextInputType.text,
                width: double.infinity),
            SizedBox(
              height: context.height * 0.02,
            ),
            defualtFormField(context,
                controller: confirmPasswordController,
                validate: () {},
                hint: "Confirm Password",
                type: TextInputType.text,
                width: double.infinity),
            SizedBox(
              height: context.height * 0.05,
            ),
            mainButton(context,
                onpressd: () {},
                background: AppColors.primary,
                text: "Reset Password")
          ],
        ),
      ),
    );
  }
}
