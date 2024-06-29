import 'package:aedc_clinic/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.icon});

  final String text;
  final VoidCallback onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 155.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.appColor, shape: const LinearBorder()),
        child: Row(
          children: [
            Image.asset(
              alignment: Alignment.centerLeft,
              fit: BoxFit.cover,
              icon,
              height: 35.h,
              width: 35.w,
            ),
            const Spacer(),
            Text(
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
