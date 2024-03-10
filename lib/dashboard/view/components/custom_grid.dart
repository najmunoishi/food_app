import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/best_selling_model.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    Key? key,
    required this.selling,
  }) : super(key: key);

  final Selling selling;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: 163.w,
      decoration: BoxDecoration(
        color: Color(0xffF3F5F7),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100.h,
            width: 116.w,
            child: Padding(
              padding: EdgeInsets.only(
                left: 26,
                top: 22,
                //right: 26,
              ),
              child: Image.asset(selling.image1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 16,
            ),
            child: Text(
              selling.title1,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  bottom: 5,
                ),
                child: SizedBox(
                  width: 74.w,
                  child: Text(
                    selling.title2,
                    style: TextStyle(
                      color: Color(0xffFF324B),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 36,
                ),
                child: Image.asset(selling.image2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
