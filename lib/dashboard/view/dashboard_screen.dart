import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../navigation/navigation.dart';
import 'components/best_selling.dart';
import 'components/categories.dart';
import 'components/dashboard_header.dart';
import 'components/dashboard_search.dart';
import 'components/dashboard_slider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xff23AA49),
              child: Image.asset('assets/icons/delete.png'),
            ),
            Positioned(
              bottom: -4,
              left: 18,
              child: Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 6,
                    top: 5,
                  ),
                  child: Text(
                    "4",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: NavigationScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: Color(0xffF3F5F7),
                  padding: EdgeInsets.only(
                    left: 24,
                    right: 24,
                    top: 10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DashBoardHeader(),
                      SizedBox(
                        height: 22.h,
                      ),
                      DashBoardSearch(),
                      SizedBox(
                        height: 110.h,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -110,
                  left: 20,
                  right: 20,
                  child: DashBoardSlider(),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 130.h,
                  ),
                  CustomCategories(),
                  SizedBox(
                    height: 26.h,
                  ),
                  BestSelling(),
                  SizedBox(
                    height: 30.h,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
