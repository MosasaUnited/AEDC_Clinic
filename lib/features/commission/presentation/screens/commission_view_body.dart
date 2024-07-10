import 'package:aedc_clinic/core/theme/styles.dart';
import 'package:aedc_clinic/features/commission/presentation/widgets/paper_must_have.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/svg_assets.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/custom_button_animation.dart';
import '../widgets/important_notice.dart';

class CommissionViewBody extends StatelessWidget {
  const CommissionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: SvgPicture.asset(
                SvgAssets.commissionSvg,
                height: 120.h,
                width: 200.w,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const PaperMustHave(),
            SizedBox(
              height: 20.h,
            ),
            const ImportantNotice(),
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: CustomButtonAnimation(
                onPressed: () {
                  Future.delayed(
                    const Duration(milliseconds: 400),
                    () {
                      GoRouter.of(context).push(AppRouter.kCommissionDetails);
                    },
                  );
                },
                child: Text(
                  textAlign: TextAlign.center,
                  'اختار ميعاد لتقديم الأوراق المطلوبة',
                  style: Styles.textStyle20.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 15.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
