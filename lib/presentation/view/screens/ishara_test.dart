import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:eye_test/presentation/view/screens/result_screen.dart';
import 'package:flutter/material.dart';

class IsharaaTestScreen extends StatefulWidget {
  const IsharaaTestScreen({super.key});

  @override
  State<IsharaaTestScreen> createState() => _IsharaaTestScreenState();
}

class _IsharaaTestScreenState extends State<IsharaaTestScreen> {
  PageController pageController = PageController();
  bool lastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: context.height * 0.075,
            right: context.width * 0.05,
            left: context.width * 0.05,
            bottom: context.height * 0.05,
          ),
          child: Stack(
            children: [
              PageView(
                onPageChanged: (index) {
                  setState(() {
                    lastpage = (index == 1);
                  });
                },
                controller: pageController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/R.png"),
                        radius: 100,
                      ),
                      SizedBox(
                        height: context.height * 0.06,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.lightGrey, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: TextButton(
                                child: Text(
                                  "R",
                                  style: getSemiBoldStyle(
                                      color: AppColors.black, fontSize: 20),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.lightGrey, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: TextButton(
                                child: Text(
                                  "B",
                                  style: getSemiBoldStyle(
                                      color: AppColors.black, fontSize: 20),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.lightGrey, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: TextButton(
                                child: Text(
                                  "F",
                                  style: getSemiBoldStyle(
                                      color: AppColors.black, fontSize: 20),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.height * 0.1,
                      ),
                      SizedBox(
                          width: context.width * 0.78,
                          child: Text(
                            textAlign: TextAlign.center,
                            "Note: Please Selest the correct Option you see in the image . please try to choose within 3 sec",
                            style: getMediumStyle(
                                color: AppColors.grey, fontSize: 15),
                          ))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/2.png"),
                        radius: 100,
                      ),
                      SizedBox(
                        height: context.height * 0.06,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.lightGrey, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: TextButton(
                                child: Text(
                                  "2",
                                  style: getSemiBoldStyle(
                                      color: AppColors.black, fontSize: 20),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.lightGrey, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: TextButton(
                                child: Text(
                                  "12",
                                  style: getSemiBoldStyle(
                                      color: AppColors.black, fontSize: 20),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.lightGrey, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: TextButton(
                                child: Text(
                                  "5",
                                  style: getSemiBoldStyle(
                                      color: AppColors.black, fontSize: 20),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.height * 0.1,
                      ),
                      SizedBox(
                          width: context.width * 0.78,
                          child: Text(
                            textAlign: TextAlign.center,
                            "Note: Please Selest the correct Option you see in the image . please try to choose within 3 sec",
                            style: getMediumStyle(
                                color: AppColors.grey, fontSize: 15),
                          ))
                    ],
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      alignment: Alignment(0, context.height * 0.001),
                      child: Row(
                        children: [
                          Container(
                            width: context.width * 0.3,
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: TextButton(
                                  onPressed: () {
                                    pageController.previousPage(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeInOutCirc);
                                  },
                                  child: Text(
                                    "Back",
                                    style: getBoldStyle(
                                        color: AppColors.black, fontSize: 15),
                                  )),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: context.width * 0.3,
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: TextButton(
                                  onPressed: () {
                                    lastpage
                                        ? Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ResultIsharaaScreen()))
                                        : pageController.nextPage(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.easeInOutCirc);
                                  },
                                  child: Text(
                                    "Next",
                                    style: getBoldStyle(
                                        color: AppColors.black, fontSize: 15),
                                  )),
                            ),
                          ),
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
