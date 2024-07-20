import 'package:aedc_clinic/core/theme/styles.dart';
import 'package:aedc_clinic/core/widgets/simple_appbar.dart';
import 'package:aedc_clinic/core/widgets/upload_image_button_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_button_animation.dart';
import '../../../../core/widgets/custom_camera_image_picker.dart';
import '../../../../core/widgets/custom_multiple_image_picker.dart';
import '../../../../core/widgets/upload_image_notice_text.dart';

class CommissionDetailsScreen extends StatelessWidget {
  const CommissionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const SimpleAppbar(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'ارفع الموافقة الخاصة بشركات الخدمات من هنا:',
                  style: Styles.textStyle16,
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomCameraImagePicker(
                  buttonText:
                      UploadImageButtonText(text: 'ارفع موافقة شركة الخدمات'),
                  noticeText: UploadImageNoticeText(
                      text: 'لم يتم رفع صورة الموافقة بعد'),
                ),
                Text(
                  'ارفع المستندات الخاصة بالجهة التى تم فيها عمل العملية :',
                  style: Styles.textStyle16,
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const CustomMultipleImagePicker(
                  buttonText: UploadImageButtonText(text: 'إرفع الصور من هنا'),
                  noticeText:
                      UploadImageNoticeText(text: 'لم يتم رفع الصور بعد ! '),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: CustomButtonAnimation(
                    child: Text(
                      'قدم الأن',
                      style: Styles.textStyle20.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    onPressed: () {
                      Future.delayed(const Duration(milliseconds: 400), () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'تم تقديم الأوراق بنجاح',
                              style: TextStyle(
                                  color: Colors.white,
                                  decorationStyle: TextDecorationStyle.double),
                            ),
                            backgroundColor: Colors.green,
                          ),
                        );
                      });
                    },
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
