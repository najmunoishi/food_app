import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/categories_model.dart';
import 'custom_list_tile.dart';

class CustomCategories extends StatelessWidget {
  const CustomCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 17.h,
              width: 17.h,
              child: Image.asset('assets/images/Face Savoring Food.png'),
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 166.w,
            ),
            Text(
              "See All",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xff23AA49),
              ),
            )
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            SizedBox(
              height: 114.h,
              //width: 340,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12.w,
                    );
                  },
                  itemBuilder: (context, index) {
                    return CustomListTile(
                      title: categories[index].title,
                      image: categories[index].image,
                    );
                  }),
            ),
          ],
        ),
      ],
    );
  }
}
