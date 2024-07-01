import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/styles.dart';
import '../widgets/tickting_buttons.dart';
import 'know_your_rights.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'إحـجـز الأن  ',
                style: Styles.textStyle20.copyWith(
                  fontSize: 24.sp,
                ),
                textDirection: TextDirection.rtl,
              ),
              const TicketButtons(),
              SizedBox(
                height: 40.h,
              ),
              const KnowYourRights(),
            ],
          ),
        ),
      ),
    );
  }
}
