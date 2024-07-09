import 'package:aedc_clinic/features/teeth/presentation/widgets/teeth_important_notice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_camera_image_picker.dart';

class TeethFilePicker extends StatelessWidget {
  const TeethFilePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TeethImportantNotice(
            text: 'من فضلك ارفع صورة القومسيون من هنا : '),
        SizedBox(
          height: 15.h,
        ),
        const CustomCameraImagePicker(),
      ],
    );
  }
}
