import 'package:aedc_clinic/features/choose_clinic/presentation/widgets/clinic_image_asset.dart';
import 'package:aedc_clinic/features/choose_clinic/presentation/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/image_assets.dart';
import '../../../../core/router/app_router.dart';

class SidiBeshrClinic extends StatelessWidget {
  const SidiBeshrClinic({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 298.0.h,
      child: InkWell(
        highlightColor: Colors.amberAccent,
        onTap: () {
          GoRouter.of(context).push(AppRouter.kHomeView);
        },
        child: const Card(
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClinicImageAsset(image: ImageAssets.sidiBeshrClinicImage),
              CustomRichText(clinicTitle: 'سيدى بشر')
            ],
          ),
        ),
      ),
    );
  }
}
