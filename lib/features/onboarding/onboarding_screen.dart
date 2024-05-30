import 'package:aedc_clinic/core/constants/colors.dart';
import 'package:aedc_clinic/features/onboarding/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: SafeArea(
          child: PageView.builder(
            itemCount: onBoardingList.length,
            itemBuilder: (context, i) => Column(
              children: [
                Text(
                  onBoardingList[i].title!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 80.h,
                ),
                Lottie.asset(
                  onBoardingList[i].image!,
                  width: 200.w,
                  height: 200.h,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 80.h,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(
                      height: 2.h,
                      color: MyColors.myGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
