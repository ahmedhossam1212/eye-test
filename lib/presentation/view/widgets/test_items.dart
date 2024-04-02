import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

Widget buildTestItem(BuildContext context,
        {required String image,
        required String title,
        required VoidCallback fun}) =>
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.babyBlue),
      width: double.infinity,
      height: context.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            SizedBox(
              width: context.width * 0.02,
            ),
            Text(
              title,
              style: getRegularStyle(color: AppColors.black, fontSize: 15),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.primary,
                        AppColors.white,
                      ])),
              child: IconButton(
                  onPressed: fun,
                  icon: const Icon(Icons.arrow_forward_ios_rounded)),
            )
          ],
        ),
      ),
    );
