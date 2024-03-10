import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardHeader extends StatelessWidget {
  const DashBoardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 24,
            top: 30,
          ),
          child: Container(
            height: 50.h,
            width: 50.w,
            child: CircleAvatar(
              backgroundColor: Color(0xff6A8071),
              child: Image.asset(
                'assets/images/Group 290.png',
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14,
            right: 11,
            top: 11,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good morning",
                style: TextStyle(
                  color: Color(0xff979899),
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "Amelia Barlow",
                style: TextStyle(
                  color: Color(0xff06161C),
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 30,
            top: 10,
          ),
          height: 52.h,
          width: 120.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 14.w,
              ),
              Image.asset("assets/images/Vector.png"),
              SizedBox(
                width: 8.w,
              ),
              Text(
                "My Flat",
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Image.asset("assets/icons/arrow_icon.png"),
            ],
          ),
        ),
      ],
    );
  }
}
