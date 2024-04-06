import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/core/utils/media_query_values.dart';
import 'package:eye_test/core/utils/style_manager.dart';
import 'package:eye_test/presentation/view/screens/test_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: const Alignment(0, 1.0),
                  children: [
                    Container(
                      width: double.infinity,
                      height: context.height * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.babyBlue,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/girlOutline.png",
                          height: context.height * 0.2,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                            width: context.width * 0.35,
                            child: const Text(
                                "Do You Know What Color Blindness is ?")),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.primary,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: AppColors.white,
                                size: 15,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TestScreen(),
                            ));
                      },
                      child: Container(
                        height: context.height * 0.12,
                        width: context.width * 0.24,
                        decoration: BoxDecoration(
                            color: AppColors.babyBlue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: context.width * 0.12,
                                height: context.height * 0.06,
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    border: Border.all(
                                      color: AppColors.primary,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Icon(
                                  Icons.visibility,
                                  color: AppColors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                " Test",
                                style: getRegularStyle(
                                    color: AppColors.black, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.width * 0.07,
                    ),
                    Container(
                      height: context.height * 0.12,
                      width: context.width * 0.24,
                      decoration: BoxDecoration(
                          color: AppColors.babyBlue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: context.width * 0.12,
                              height: context.height * 0.06,
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  border: Border.all(
                                    color: AppColors.primary,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(
                                Icons.visibility,
                                color: AppColors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Glassess",
                              style: getRegularStyle(
                                  color: AppColors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: context.width * 0.07,
                    ),
                    Container(
                      height: context.height * 0.12,
                      width: context.width * 0.24,
                      decoration: BoxDecoration(
                          color: AppColors.babyBlue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: context.width * 0.12,
                              height: context.height * 0.06,
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                  border: Border.all(
                                    color: AppColors.primary,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(
                                Icons.camera_alt_sharp,
                                color: AppColors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Camera",
                              style: getRegularStyle(
                                  color: AppColors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: context.height * 0.03,
                ),
                Text(
                  "Articles",
                  style: getBoldStyle(color: AppColors.black, fontSize: 25),
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Material(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                      child: Container(
                        width: context.width * 0.5,
                        height: context.height * 0.23,
                        decoration: BoxDecoration(color: AppColors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/eye1.png",
                              height: context.height * 0.14,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Color Blindness case ...",
                              style: getSemiBoldStyle(
                                  color: AppColors.black, fontSize: 16),
                            ),
                            SizedBox(
                                width: context.width * 0.4,
                                child: Text(
                                  "Lorem ipsum dolor sit amet",
                                  style: getRegularStyle(
                                      color: AppColors.grey, fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: context.width * 0.1,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Material(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                      child: Container(
                        width: context.width * 0.5,
                        height: context.height * 0.23,
                        decoration: BoxDecoration(color: AppColors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/Bg3qkPDpopY.png",
                              height: context.height * 0.14,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Color Blindness case ...",
                              style: getSemiBoldStyle(
                                  color: AppColors.black, fontSize: 16),
                            ),
                            SizedBox(
                                width: context.width * 0.4,
                                child: Text(
                                  "Lorem ipsum dolor sit amet",
                                  style: getRegularStyle(
                                      color: AppColors.grey, fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: context.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Glasses",
                    style: getBoldStyle(color: AppColors.black, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Material(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                      child: Container(
                        width: context.width * 0.5,
                        height: context.height * 0.23,
                        decoration: BoxDecoration(color: AppColors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/circleGlasses.png",
                              height: context.height * 0.14,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Color Blindness case ...",
                              style: getSemiBoldStyle(
                                  color: AppColors.black, fontSize: 16),
                            ),
                            SizedBox(
                                width: context.width * 0.4,
                                child: Text(
                                  "Lorem ipsum dolor sit amet",
                                  style: getRegularStyle(
                                      color: AppColors.grey, fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: context.width * 0.1,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Material(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(20),
                      elevation: 5,
                      child: Container(
                        width: context.width * 0.5,
                        height: context.height * 0.23,
                        decoration: BoxDecoration(color: AppColors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/squreGlasses.png",
                              height: context.height * 0.14,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Color Blindness case ...",
                              style: getSemiBoldStyle(
                                  color: AppColors.black, fontSize: 16),
                            ),
                            SizedBox(
                                width: context.width * 0.4,
                                child: Text(
                                  "Lorem ipsum dolor sit amet",
                                  style: getRegularStyle(
                                      color: AppColors.grey, fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
