import 'package:aedc_clinic/features/home/presentation/screens/home_screen.dart';
import 'package:aedc_clinic/features/home/presentation/screens/medical_history_screen.dart';
import 'package:aedc_clinic/features/home/presentation/screens/schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/screens/profile_screen.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  late PageController pageController = PageController();

  static BottomNavCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = const [
    HomeScreen(),
    ScheduleScreen(),
    MedicalHistoryScreen(),
    ProfileScreen(),
  ];

  List<IconData> icons = const [
    Icons.home_outlined,
    Icons.medical_services_outlined,
    Icons.hiking_sharp,
    Icons.person_outlined,
  ];

  List<String> titles = const [
    'الرئيسية',
    'مواعيدى',
    'السجل المرضى',
    'حسابى',
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(BottomNavStateSuccess(currentIndex));
  }
}
