import 'package:enefty_icons/enefty_icons.dart';
import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:eye_test/presentation/view/widgets/main_button.dart';
import 'package:flutter/material.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/passChanged.png",
              ),
              SizedBox(
                height: context.height * 0.05,
              ),
              Text(
                "Password Changed!",
                style: getBoldStyle(color: AppColors.black, fontSize: 25),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              SizedBox(
                width: context.width * 0.55,
                child: Text(
                  "Your password has been changed successfully.",
                  style: getRegularStyle(color: AppColors.grey, fontSize: 18),
                ),
              ),
              SizedBox(
                height: context.height * 0.05,
              ),
              mainButton(context,
                  onpressd: () {},
                  background: AppColors.primary,
                  text: "Back to Login")
            ],
          ),
        ),
      ),
    );
  }
}
