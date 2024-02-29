import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget otpForm(
  BuildContext context, {
  required TextEditingController controller,
  required Function validate,
  double? height,
}) =>
    Container(
      height: height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: TextFormField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          keyboardType: TextInputType.number,
          controller: controller,
          validator: (String? s) {
            return validate(s);
          },
          cursorColor: AppColors.black,
          style: getMediumStyle(color: AppColors.black, fontSize: 17),
          decoration: InputDecoration(
              hintStyle: getMediumStyle(color: AppColors.grey, fontSize: 17),
              filled: true,
              fillColor: AppColors.lightGrey,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              border: const OutlineInputBorder()),
        ),
      ),
    );
