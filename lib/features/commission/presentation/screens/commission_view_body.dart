import 'package:aedc_clinic/core/theme/styles.dart';
import 'package:aedc_clinic/features/commission/presentation/widgets/paper_must_have.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_button_animation.dart';
import '../widgets/important_notice.dart';

class CommissionViewBody extends StatelessWidget {
  const CommissionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const PaperMustHave(),
          SizedBox(
            height: 30.h,
          ),
          const ImportantNotice(),
          const Spacer(),
          Center(
            child: CustomButtonAnimation(
              onPressed: () {},
              child: Text(
                textAlign: TextAlign.center,
                'اختار ميعاد لتقديم الأوراق المطلوبة',
                style: Styles.textStyle20.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 15.sp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
