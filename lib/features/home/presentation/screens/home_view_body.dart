import 'package:aedc_clinic/core/theme/colors.dart';
import 'package:aedc_clinic/core/widgets/simple_appbar.dart';
import 'package:aedc_clinic/features/home/logic/bootom_nav_cubit/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/icon_assets.dart';
import '../../../../core/theme/styles.dart';
import '../widgets/custom_bottom_navbar_dot.dart';
import '../widgets/exit_show_dialog.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onPageChanged(int index) {
    BlocProvider.of<BottomNavCubit>(context).screens;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: BlocConsumer<BottomNavCubit, BottomNavState>(
        listener: (context, state) {},
        builder: (context, state) {
          BottomNavCubit cubit = BottomNavCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              leading: const SimpleAppbar(),
              actions: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const ExitShowDialog();
                      },
                    );
                  },
                  icon: Image.asset(
                    IconAssets.exit,
                    cacheHeight: 20,
                    cacheWidth: 20,
                  ),
                )
              ],
              title: Text(cubit.titles[cubit.currentIndex]),
              centerTitle: true,
              titleTextStyle: Styles.textStyle20.copyWith(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w800,
                fontSize: 25.sp,
              ),
              backgroundColor: Colors.transparent,
            ),
            body: PageView(
              onPageChanged: (int index) => onPageChanged,
              controller: cubit.pageController,
              children: [cubit.screens[cubit.currentIndex]],
            ),
            bottomNavigationBar: CustomBottomNavBarDot(
              onChange: (index) {
                BlocProvider.of<BottomNavCubit>(context)
                    .changeBottomNavBar(index);
              },
              defaultSelectedIndex: 0,
              backgroundColor: MyColors.myGrey,
              radius: 30,
              showLabel: true,
              textList: cubit.titles,
              iconList: cubit.icons,
            ),
          );
        },
      ),
    );
  }
}
