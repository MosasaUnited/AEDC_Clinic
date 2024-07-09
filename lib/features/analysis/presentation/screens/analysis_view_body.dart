import 'package:aedc_clinic/core/widgets/custom_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/svg_assets.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_button_animation.dart';
import '../../../../core/widgets/custom_camera_image_picker.dart';
import '../../../../core/widgets/upload_image_button_text.dart';
import '../../../../core/widgets/upload_image_notice_text.dart';
import '../../../x-ray/presentation/widgets/xray_paper_notice.dart';

class AnalysisViewBody extends StatefulWidget {
  const AnalysisViewBody({super.key});

  @override
  State<AnalysisViewBody> createState() => _AnalysisViewBodyState();
}

class _AnalysisViewBodyState extends State<AnalysisViewBody> {
  final formKey = GlobalKey<FormState>();

  final List<String> dropDownItems = [
    '',
    'معمل المختبر',
    'معمل سبيد',
    'معمل ألفا',
    'معمل النيل',
  ];

  String selectedTextFieldItem = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      SvgAssets.medicalAnalysisSvg,
                      height: 120.h,
                      width: 400.w,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    const PaperNotice(
                      text:
                          'إذا كان لديك تحويل من مستشفى لعمل تحاليل ارفع صورة التحويل من هنا',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    const CustomCameraImagePicker(
                      buttonText: UploadImageButtonText(
                        text: 'ارفع صورة تحويل التحليل من هنا',
                      ),
                      noticeText: UploadImageNoticeText(
                        text: 'لم يتم رفع صورة تحويل التحليل بعد',
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    DropdownButtonFormField(
                      value: selectedTextFieldItem,
                      validator: (value) {
                        if (value == '') {
                          return 'من فضلك اختر مركز التحاليل';
                        }
                        return null;
                      },
                      items: dropDownItems.map((String item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Center(child: Text(item)),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selectedTextFieldItem = value!;
                        });
                      },
                      icon: const Icon(Icons.arrow_drop_down),
                      decoration: const InputDecoration(
                        labelText: ' -- إختر معمل التحاليل --',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomDatePicker(
                        hintText: 'إختر اليوم',
                        validatorText: ' من فضلك اختر اليوم'),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomButtonAnimation(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'تم حجز الميعاد بنجاح',
                            style: TextStyle(
                                color: Colors.white,
                                decorationStyle: TextDecorationStyle.double),
                          ),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  },
                  child: Text(
                    textAlign: TextAlign.center,
                    'إحجز ميعاد',
                    style: Styles.textStyle20.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                const PaperNotice(
                  text:
                      'إذا كان ليس لديك تحويل من مستشفى لعمل تحليل . برجاء حجز استشارة من هنا ',
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomButtonAnimation(
                  color: Colors.amber,
                  onPressed: () async {
                    Future.delayed(const Duration(milliseconds: 400), () {
                      GoRouter.of(context).push(AppRouter.kExamination);
                    });
                  },
                  child: Text(
                    textAlign: TextAlign.center,
                    'إحجز استشارة',
                    style: Styles.textStyle20.copyWith(
                      color: Colors.black87,
                      fontWeight: FontWeight.w900,
                    ),
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
