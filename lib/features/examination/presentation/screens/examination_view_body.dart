import 'package:aedc_clinic/core/constants/svg_assets.dart';
import 'package:aedc_clinic/core/widgets/custom_date_picker.dart';
import 'package:aedc_clinic/core/widgets/custom_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_button_animation.dart';

class ExaminationViewBody extends StatefulWidget {
  const ExaminationViewBody({super.key});

  @override
  State<ExaminationViewBody> createState() => _ExaminationViewBodyState();
}

class _ExaminationViewBodyState extends State<ExaminationViewBody> {
  final formKey = GlobalKey<FormState>();

  final List<String> dropDownItems = [
    '',
    'حازم',
    'أمانى',
    'أحمد عبد المقصود',
    'شيرين',
    'غادة عبد العزيز',
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
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        SvgAssets.examinationSvg,
                        height: 120.h,
                        width: 400.w,
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      DropdownButtonFormField(
                        value: selectedTextFieldItem,
                        validator: (value) {
                          if (value == '') {
                            return 'من فضلك اختر الدكتور';
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
                          labelText: ' -- إختر الدكتور --',
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
                          validatorText: 'من فضلك اختر اليوم'),
                      SizedBox(height: 20.h),
                      CustomTimePicker(
                          hintText: 'إختر الوقت',
                          validatedText: 'من فضلك اختار الوقت')
                    ],
                  ),
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
                            'تم حجز الاستشارة بنجاح',
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
                    'إحجز استشارة',
                    style: Styles.textStyle20.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
