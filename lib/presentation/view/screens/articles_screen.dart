import 'package:enefty_icons/enefty_icons.dart';
import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(EneftyIcons.arrow_left_3_outline)),
        title: Text(
          "Articles",
          style: getBoldStyle(color: AppColors.black, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type essentially unchanged",
              style: getRegularStyle(color: AppColors.black, fontSize: 17),
            ),
            SizedBox(
              height: context.height * 0.035,
            ),
            Image.asset(
              "assets/images/media.png",
              width: context.width * 3,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: context.height * 0.035,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap.",
              style: getRegularStyle(color: AppColors.black, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
