import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardSlider extends StatelessWidget {
  DashBoardSlider({Key? key}) : super(key: key);
  final List<String> images = [
    'assets/images/selmon.png',
    'assets/images/selmon1.jpg',
    'assets/images/selmon2.jpg',
    'assets/images/selmon3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.h,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: images.map((assetPath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  assetPath,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
