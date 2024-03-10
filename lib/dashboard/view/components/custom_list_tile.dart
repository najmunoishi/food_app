import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            SizedBox(
              child: CircleAvatar(
                radius: 42,
                backgroundColor:const Color(0xffF3F5F7),
                child: Image.asset(image),
              ),
            ),
           SizedBox(
              height: 12.h,
            ),
            Text(
             title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        
    );
  }
}
