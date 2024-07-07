import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/svg_assets.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_button_animation.dart';
import '../../../../core/widgets/custom_date_picker.dart';
import '../widgets/xray_paper_notice.dart';

class XrayViewBody extends StatefulWidget {
  const XrayViewBody({super.key});

  @override
  State<XrayViewBody> createState() => _XrayViewBodyState();
}

class _XrayViewBodyState extends State<XrayViewBody> {
  final formKey = GlobalKey<FormState>();

  final List<String> dropDownItems = [
    '',
    'دار الأشعة',
    'مركز القلب و الصدر',
    'ICC Scan',
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
                      SvgAssets.xraySvg,
                      height: 120.h,
                      width: 400.w,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    const PaperNotice(
                      text:
                          'إذا كان لديك تحويل من مستشفى لعمل آشعة ارفع صورة التحويل من هنا',
                    ),
                    //TODO: Add Teeth Commission File or Image Picker
                    SizedBox(
                      height: 15.h,
                    ),
                    const PaperNotice(
                        text:
                            'اختر مركز الأشعة المراد عمل به الآشعة من القائمة التالية'),
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField(
                      value: selectedTextFieldItem,
                      validator: (value) {
                        if (value == '') {
                          return 'من فضلك اختر مركز الأشعة';
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
                        labelText: ' -- إختر مركز الأشعة --',
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
                      hintText: 'اختار اليوم',
                      validatorText: 'من فضلك اختر اليوم',
                    ),
                    SizedBox(height: 20.h),
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
                      'إذا كان ليس لديك تحويل من مستشفى لعمل آشعة . برجاء حجز استشارة من هنا ',
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
