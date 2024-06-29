import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/icon_assets.dart';
import 'custom_elevated_button.dart';

class TicketButtons extends StatelessWidget {
  const TicketButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.ltr,
      children: [
        SizedBox(
          height: 25.h,
        ),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              text: 'استشارة',
              icon: IconAssets.estshara,
              onPressed: () {},
            ),
            SizedBox(
              width: 20.w,
            ),
            CustomElevatedButton(
              text: 'تـحـالـيـل',
              icon: IconAssets.t7alil,
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
          height: 35.h,
        ),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              text: 'آشــعــة',
              icon: IconAssets.ash3a,
              onPressed: () {},
            ),
            SizedBox(
              width: 20.w,
            ),
            CustomElevatedButton(
              text: 'علاج شهرى',
              icon: IconAssets.monthlyPills,
              onPressed: () {},
            ),
            SizedBox(
              width: 5.w,
            ),
          ],
        ),
        SizedBox(
          height: 35.h,
        ),
        Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              text: 'أســنــان',
              icon: IconAssets.teethCheck,
              onPressed: () {},
            ),
            SizedBox(
              width: 20.w,
            ),
            CustomElevatedButton(
              text: 'قومسيون',
              icon: IconAssets.qomsion,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
