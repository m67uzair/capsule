import 'package:capsule/src/features/auth/profile_info/profile_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/palette.dart';
import '../home/home_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool click = false;
  bool click2 = false;
  bool click3 = false;
  bool click4 = false;

  static List<Widget> navigationWidgets = [
    ProfileInfoScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    click = !click;
                    if (click2 =false) {
                      click = true;
                    } else if (click3 = false) {
                      click = true;
                    } else if (click4 = false) {
                      click = true;
                    }
                  });
                  print('object');
                },
                icon: Image.asset(
                  ImgAssets.homeNav,
                  height: 30,
                  color: AppColors.pinkGrade2,
                  colorBlendMode:
                  click == false ? BlendMode.dst : BlendMode.srcIn,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    click2 = !click2;
                    if (click = false) {
                      click2 = true;
                    } else if (click3 = false) {
                      click2 = true;
                    } else if (click4 = false) {
                      click2 = true;
                    }
                  });
                },
                icon: Image.asset(
                  ImgAssets.listNav,
                  height: 30,
                  color: AppColors.pinkGrade2,
                  colorBlendMode:
                  click2 == false ? BlendMode.dst : BlendMode.srcIn,
                )),

            SizedBox(
              width: width_14,
            ),


            IconButton(
                onPressed: () {
                  setState(() {
                    click3 = !click3;
                    if (click = false) {
                      click3 = true;
                    } else if (click2 = false) {
                      click3 = true;
                    } else if (click4 = false) {
                      click3 = true;
                    }
                  });
                },
                icon: Image.asset(
                  ImgAssets.uspNav,
                  height: 30,
                  color: AppColors.pinkGrade2,
                  colorBlendMode:
                  click3 == false ? BlendMode.dst : BlendMode.srcIn,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    click4 = !click4;
                    if (click = false) {
                      click4 = true;
                    } else if (click2 = false) {
                      click4 = true;
                    } else if (click3 = false) {
                      click4 = true;
                    }
                  });
                },
                icon: Image.asset(
                  ImgAssets.userNav,
                  height: 30,
                  color: AppColors.pinkGrade2,
                  colorBlendMode:
                  click4 == false ? BlendMode.dst : BlendMode.srcIn,
                )),
          ],
        ),
      ),
      body: IndexedStack(index: _selectedIndex, children: navigationWidgets),
    );
  }
}