import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class ResultIsharaaScreen extends StatelessWidget {
  const ResultIsharaaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Result",
          style: getBoldStyle(color: AppColors.black, fontSize: 20),
        ),
      ),
    );
  }
}
