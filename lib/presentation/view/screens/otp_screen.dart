import 'package:enefty_icons/enefty_icons.dart';
import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:eye_test/presentation/view/widgets/main_button.dart';
import 'package:eye_test/presentation/view/widgets/otp_form.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController index0Controller = TextEditingController();
  TextEditingController index1Controller = TextEditingController();
  TextEditingController index2Controller = TextEditingController();
  TextEditingController index3Controller = TextEditingController();

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
              "verify Account",
              style: getBoldStyle(color: AppColors.black, fontSize: 25),
            ),
            SizedBox(
              height: context.height * 0.03,
            ),
            Text(
              "Code has been send to joh@gmail.com Enter the code to verify your account",
              style: getRegularStyle(color: AppColors.grey, fontSize: 18),
            ),
            SizedBox(
              height: context.height * 0.03,
            ),
            Row(
              children: [
                Expanded(
                    child: otpForm(context,
                        controller: index0Controller, validate: () {})),
                SizedBox(
                  width: context.width * 0.02,
                ),
                Expanded(
                    child: otpForm(context,
                        controller: index1Controller, validate: () {})),
                SizedBox(
                  width: context.width * 0.02,
                ),
                Expanded(
                    child: otpForm(context,
                        controller: index2Controller, validate: () {})),
                SizedBox(
                  width: context.width * 0.02,
                ),
                Expanded(
                    child: otpForm(context,
                        controller: index3Controller, validate: () {})),
                SizedBox(
                  width: context.width * 0.02,
                ),
              ],
            ),
            SizedBox(
              height: context.height * 0.04,
            ),
            mainButton(context,
                onpressd: () {}, background: AppColors.primary, text: "Verify"),
            SizedBox(
              height: context.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t recieve code?",
                  style: getRegularStyle(
                      color: AppColors.black, fontSize: context.height * 0.024),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend Code",
                      style: getBoldStyle(
                          color: AppColors.grey,
                          fontSize: context.height * 0.024),
                    ))
              ],
            ),
            Center(
              child: Text(
                "Resend code in 00:59",
                style: getRegularStyle(
                    color: AppColors.black, fontSize: context.height * 0.024),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
