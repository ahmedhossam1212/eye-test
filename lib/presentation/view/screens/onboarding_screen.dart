import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:eye_test/presentation/view/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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
                    lastpage = (index == 2);
                  });
                },
                controller: pageController,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: context.height * 0.17,
                        backgroundImage:
                            const AssetImage("assets/images/eye_circle.png"),
                      ),
                      const Spacer(),
                      Container(
                        width: double.infinity,
                        height: context.height * 0.5,
                        decoration: BoxDecoration(
                          color: AppColors.babyBlue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Do you know what color blindness is?",
                                  style: getSemiBoldStyle(
                                      color: AppColors.black,
                                      fontSize: context.height * 0.04),
                                ),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                Text(
                                  " we'll not only explain it but also help you experience and cope with it more effectively.",
                                  style: getRegularStyle(
                                      color: AppColors.grey,
                                      fontSize: context.height * 0.023),
                                ),
                                SizedBox(
                                  height: context.width * 0.1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: context.height * 0.17,
                        backgroundImage:
                            const AssetImage("assets/images/girleCircle.png"),
                      ),
                      const Spacer(),
                      Container(
                        width: double.infinity,
                        height: context.height * 0.5,
                        decoration: BoxDecoration(
                          color: AppColors.babyBlue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Test your eye here with lost color app",
                                  style: getSemiBoldStyle(
                                      color: AppColors.black,
                                      fontSize: context.height * 0.04),
                                ),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                Text(
                                  "Begin your journey by testing your eye's and let us guide you towards a more colorful perspective.",
                                  style: getRegularStyle(
                                      color: AppColors.grey,
                                      fontSize: context.height * 0.023),
                                ),
                                SizedBox(
                                  height: context.width * 0.1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: context.height * 0.17,
                        backgroundImage:
                            const AssetImage("assets/images/manCircle.png"),
                      ),
                      const Spacer(),
                      Container(
                        width: double.infinity,
                        height: context.height * 0.5,
                        decoration: BoxDecoration(
                          color: AppColors.babyBlue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Our app comes with our specially designed glasses",
                                  style: getSemiBoldStyle(
                                      color: AppColors.black,
                                      fontSize: context.height * 0.04),
                                ),
                                SizedBox(
                                  height: context.height * 0.02,
                                ),
                                Text(
                                  "we're here to guide you on a journey to experience the full spectrum of colors.",
                                  style: getRegularStyle(
                                      color: AppColors.grey,
                                      fontSize: context.height * 0.023),
                                ),
                                SizedBox(
                                  height: context.width * 0.1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      alignment: Alignment(0, context.height * 0.001),
                      child: lastpage
                          ? Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen(),
                                          ));
                                    },
                                    child: Text(
                                      "Done",
                                      style: getBoldStyle(
                                          color: AppColors.black, fontSize: 25),
                                    )),
                              ),
                            )
                          : Row(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen(),
                                          ));
                                    },
                                    child: Text(
                                      "Skip",
                                      style: getBoldStyle(
                                          color: AppColors.black, fontSize: 20),
                                    )),
                                const Spacer(),
                                Container(
                                  width: context.width * 0.3,
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextButton(
                                        onPressed: () {
                                          pageController.nextPage(
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              curve: Curves.easeInOutCirc);
                                        },
                                        child: Text(
                                          "Next",
                                          style: getBoldStyle(
                                              color: AppColors.black,
                                              fontSize: 20),
                                        )),
                                  ),
                                ),
                              ],
                            ))),
              Positioned(
                left: context.width * 0.4,
                right: context.width * 0.4,
                bottom: context.height * 0.01,
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: SlideEffect(
                      dotHeight: context.height * 0.01,
                      dotWidth: context.width * 0.02,
                      dotColor: AppColors.grey,
                      activeDotColor: AppColors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
