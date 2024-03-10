import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/best_selling_model.dart';
import 'custom_grid.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Best Bestselling",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Container(
              height: 17.h,
              width: 17.h,
              child: Image.asset('assets/images/Fire.png'),
            ),
            SizedBox(
              width: 146.h,
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
          height: 10.h,
        ),
        SizedBox(
          height: 214.h,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 14,
              ),
              itemCount: best_selling.length,
              itemBuilder: (context, index) {
                return CustomGridView(
                  selling: best_selling[index],
                );
              }),
        ),
      ],
    );
  }
}
