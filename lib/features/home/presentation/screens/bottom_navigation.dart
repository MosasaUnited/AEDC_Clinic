import 'package:aedc_clinic/features/home/logic/bootom_nav_cubit/bottom_nav_cubit.dart';
import 'package:aedc_clinic/features/home/presentation/widgets/custom_bottom_navbar_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocConsumer<BottomNavCubit, BottomNavState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BottomNavCubit.get(context);

          return Scaffold(
            bottomNavigationBar: CustomBottomNavBarDot(
              onChange: (index) {
                cubit.changeBottomNavBar(index);
              },
              defaultSelectedIndex: 0,
              backgroundColor: Colors.grey.shade100,
              radius: 25,
              showLabel: false,
              textList: const [
                'Home',
                'Camera',
                'Messenger',
                'User',
              ],
              iconList: const [
                Icons.home_outlined,
                Icons.camera,
                Icons.mail,
                Icons.person_outlined,
              ],
            ),
            extendBody: true,
            body: Center(
              child: Text(cubit.currentIndex.toString()),
            ),
          );
        },
      ),
    );
  }
}
