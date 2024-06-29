import 'package:aedc_clinic/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class KnowYourRights extends StatelessWidget {
  const KnowYourRights({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 310.w,
      child: ElevatedButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kKnowYourRightsReader);
        },
        child: const Row(
          children: [
            Text('إعرف حقوقك'),
          ],
        ),
      ),
    );
  }
}
