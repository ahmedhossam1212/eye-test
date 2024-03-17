import 'package:enefty_icons/enefty_icons.dart';
import 'package:eye_test/core/utils/app_colors.dart';
import 'package:eye_test/presentation/view/screens/home_screen.dart';
import 'package:eye_test/presentation/view/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  int selectedIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            screens[currentIndex],
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  EneftyIcons.home_2_bold,
                ),
                label: ""),
            BottomNavigationBarItem(
              icon: Icon(EneftyIcons.user_bold),
              label: "",
            ),
          ]),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Material(
          borderRadius: BorderRadius.circular(30),
          clipBehavior: Clip.hardEdge,
          elevation: 10,
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: FloatingActionButton(
              elevation: 10,
              onPressed: () {},
              backgroundColor: AppColors.primary,
              child: Icon(
                EneftyIcons.search_normal_2_outline,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
