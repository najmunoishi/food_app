import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardSearch extends StatelessWidget {
  const DashBoardSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
        prefixIcon: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 5,
            top: 10,
            bottom: 10,
          ),
          child: Image.asset(
            'assets/icons/search.png',
          ),
        ),
        hintText: "Search category",
        hintStyle: TextStyle(
          fontSize: 16.sp,
          color: Color(
            0xff979899,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white,
            //color: Colors.black,
          ),
        ),
      ),
    );
  }
}
