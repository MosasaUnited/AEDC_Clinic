import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key, required this.clinicTitle});
  final String clinicTitle;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: 'عـيـادة \n',
          style: Styles.textStyle30.copyWith(
            color: Colors.black45,
            fontSize: 60.sp,
            fontWeight: FontWeight.w900,
            height: 2,
            fontFamily: 'Cairo',
          ),
        ),
        TextSpan(
          text: clinicTitle,
          style: Styles.textStyle30.copyWith(
            color: MyColors.myLightBlue,
            fontSize: 60.sp,
            fontWeight: FontWeight.w900,
            height: 2,
            fontFamily: 'Cairo',
          ),
        ),
      ]),
    );
  }
}
