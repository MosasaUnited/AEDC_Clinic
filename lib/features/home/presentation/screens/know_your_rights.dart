import 'package:aedc_clinic/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/colors.dart';

class KnowYourRights extends StatelessWidget {
  const KnowYourRights({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 310.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.appColor, shape: const LinearBorder()),
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kKnowRightsReader);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              'إعرف حقوقك',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
