import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/hex_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

Widget defualtFormField(
  BuildContext context, {
  required TextEditingController controller,
  required Function validate,
  required String hint,
  required TextInputType type,
  required double width,
  bool isPassword = false,
  Widget? suffix,
}) =>
    Container(
      height: context.height * 0.08,
      width: width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.grey)),
      child: Center(
        child: TextFormField(
          obscureText: isPassword,
          keyboardType: type,
          controller: controller,
          validator: (String? s) {
            return validate(s);
          },
          cursorColor: HexColor("#8391A1"),
          style: getMediumStyle(color: AppColors.black, fontSize: 17),
          decoration: InputDecoration(
              hintStyle:
                  getMediumStyle(color: HexColor("#8391A1"), fontSize: 17),
              hintText: hint,
              suffixIcon: suffix,
              filled: true,
              fillColor: HexColor("#E8ECF4"),
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              border: const OutlineInputBorder()),
        ),
      ),
    );
