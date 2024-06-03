import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/custom_button.dart';
import '../../data/static/static.dart';
import '../../logic/cubit/onboarding_cubit.dart';
import 'dots.dart';

class CustomSliderOnboarding extends StatelessWidget {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(), // Create the cubit here
      child: Scaffold(
        body: BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
            final cubit = context.read<OnboardingCubit>();
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: PageView.builder(
                      controller: cubit.pageController,
                      itemCount: onBoardingList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              onBoardingList[index].title!,
                              style: TextStyle(fontSize: 24.sp),
                            ),
                            Lottie.asset(
                              onBoardingList[index].image!,
                              height: 300.h,
                              width: 300.w,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              onBoardingList[index].body!,
                              style: TextStyle(fontSize: 20.sp),
                              maxLines: 3,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        );
                      },
                      onPageChanged: (index) => cubit.onNextPageChanged(index),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Column(
                    children: [
                      const Dots(),
                      SizedBox(
                        height: 50.h,
                      ), // Dots widget will now use the same cubit
                      CustomButton(
                        backgroundColor: MyColors.appColor,
                        textColor: Colors.white,
                        // text: 'Continue',
                        text: cubit.currentPage == onBoardingList.length - 1
                            ? 'تسجيل الدخول'
                            : 'الـتـالـى',
                        onPressed: () {
                          cubit.next();
                        },
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
