import 'package:aedc_clinic/features/onboarding/data/static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  int currentPage = 0;

  late PageController pageController = PageController();

  OnboardingCubit() : super(OnboardingInitialState());

  void next() {
    emit(OnboardingNext());
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      print('Go To Login Page'); //TODO
    } else {
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
      );
    }
  }

  void onNextPageChanged(int index) {
    currentPage = index;
    emit(OnboardingOnPageChanged(index));
  }
}
