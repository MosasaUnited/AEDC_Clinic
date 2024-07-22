import 'package:aedc_clinic/core/theme/styles.dart';
import 'package:aedc_clinic/features/choose_clinic/presentation/widgets/dekhela_clinic.dart';
import 'package:aedc_clinic/features/choose_clinic/presentation/widgets/ibrahimya_clinic.dart';
import 'package:aedc_clinic/features/choose_clinic/presentation/widgets/salah_eldin_clinic.dart';
import 'package:aedc_clinic/features/choose_clinic/presentation/widgets/sidi_beshr_clinic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TappableChooseClinicScreen extends StatelessWidget {
  const TappableChooseClinicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.w),
              child: Column(
                children: [
                  Text(
                    'إختر العيادة القريبة منك',
                    style: Styles.textStyle30.copyWith(
                      fontSize: 40.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const SalahEldinClinic(),
                  SizedBox(
                    height: 15.h,
                  ),
                  const IbrahimyaClinic(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const SidiBeshrClinic(),
                  SizedBox(
                    height: 15.h,
                  ),
                  const DekhelaClinic(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
