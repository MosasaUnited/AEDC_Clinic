import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15.sp,
      ),
      textDirection: TextDirection.rtl,
    );
  }
}
