import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(25),
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Is there any case of color blindness?",
                            style: getRegularStyle(
                                color: AppColors.black, fontSize: 15),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.check_circle_outlined,
                              color: AppColors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.cancel_outlined,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "color blindness type :",
                            style: getRegularStyle(
                                color: AppColors.black, fontSize: 15),
                          ),
                          Text(
                            " red-green",
                            style: getBoldStyle(
                                color: AppColors.black, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.height * 0.02,
                      ),
                      Row(
                        children: [
                          Text(
                            "Correct answer:",
                            style: getRegularStyle(
                                color: Colors.green, fontSize: 15),
                          ),
                          Text(
                            " 2",
                            style: getBoldStyle(
                                color: AppColors.black, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.height * 0.02,
                      ),
                      Row(
                        children: [
                          Text(
                            "Incorrect answer :",
                            style: getRegularStyle(
                                color: Colors.red, fontSize: 15),
                          ),
                          Text(
                            " 2",
                            style: getBoldStyle(
                                color: AppColors.black, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.height * 0.02,
                      ),
                      Row(
                        children: [
                          Text(
                            "Correct Percentage :",
                            style: getRegularStyle(
                                color: AppColors.black, fontSize: 15),
                          ),
                          Text(
                            " 50%",
                            style: getBoldStyle(
                                color: AppColors.black, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LinearPercentIndicator(
                            barRadius: const Radius.circular(20),
                            width: context.width * 0.8,
                            lineHeight: 14.0,
                            percent: 0.5,
                            backgroundColor: Colors.grey,
                            progressColor: Colors.blue,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.height * 0.02,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.height * 0.05,
            ),
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(25),
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("assets/images/2.png"),
                          ),
                          SizedBox(
                            width: context.width * 0.02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Correct answer :",
                                    style: getRegularStyle(
                                        color: AppColors.black, fontSize: 15),
                                  ),
                                  Text(
                                    " 12",
                                    style: getBoldStyle(
                                        color: AppColors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Your answer :",
                                    style: getRegularStyle(
                                        color: AppColors.grey, fontSize: 15),
                                  ),
                                  Text(
                                    " 32",
                                    style: getBoldStyle(
                                        color: AppColors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Color Blindness detected",
                                    style: getRegularStyle(
                                        color: Colors.red, fontSize: 15),
                                  ),
                                  Text(
                                    " 50%",
                                    style: getBoldStyle(
                                        color: AppColors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: context.height * 0.01,
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("assets/images/R.png"),
                          ),
                          SizedBox(
                            width: context.width * 0.02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Correct answer :",
                                    style: getRegularStyle(
                                        color: AppColors.black, fontSize: 15),
                                  ),
                                  Text(
                                    " 12",
                                    style: getBoldStyle(
                                        color: AppColors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Your answer :",
                                    style: getRegularStyle(
                                        color: AppColors.grey, fontSize: 15),
                                  ),
                                  Text(
                                    " 32",
                                    style: getBoldStyle(
                                        color: AppColors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Color Blindness detected",
                                    style: getRegularStyle(
                                        color: Colors.red, fontSize: 15),
                                  ),
                                  Text(
                                    " 50%",
                                    style: getBoldStyle(
                                        color: AppColors.black, fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
