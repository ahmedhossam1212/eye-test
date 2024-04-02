import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:eye_test/presentation/view/widgets/test_items.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  TestScreen({super.key});

  final List<String> images = [
    "assets/images/IshiharaTest.png",
    "assets/images/Framsworth Lanntern Test.png",
    "assets/images/Cambridge Color Test.png",
    "assets/images/Kids Color Blind Test.png"
  ];
  final List<String> title = [
    "Ishihara Test",
    "Framsworth Lanntern Test",
    "Cambridge Color Test",
    "Kids Color Blind Test"
  ];
  final List<Widget> screens = [];

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
          "Test",
          style: getBoldStyle(color: AppColors.black, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
            itemBuilder: (context, index) => buildTestItem(context,
                image: images[index], title: title[index], fun: () {}),
            separatorBuilder: (context, index) => SizedBox(
                  height: context.height * 0.04,
                ),
            itemCount: 4),
      ),
    );
  }
}
