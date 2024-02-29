import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

Widget mainButton(
  BuildContext context, {
  required VoidCallback onpressd,
  required Color background,
  required String text,
}) =>
    Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
      child: MaterialButton(
        minWidth: double.infinity,
        height: context.height * 0.07,
        onPressed: onpressd,
        color: background,
        child: Text(
          text,
          style: getBoldStyle(
              color: AppColors.black, fontSize: context.height * 0.03),
        ),
      ),
    );
