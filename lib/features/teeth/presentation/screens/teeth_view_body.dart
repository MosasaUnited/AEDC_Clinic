import 'package:aedc_clinic/core/widgets/custom_date_picker.dart';
import 'package:aedc_clinic/core/widgets/custom_time_picker.dart';
import 'package:aedc_clinic/features/teeth/presentation/widgets/teeth_file_picker.dart';
import 'package:aedc_clinic/features/teeth/presentation/widgets/teeth_important_notice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/svg_assets.dart';
import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_button_animation.dart';

class TeethViewBody extends StatefulWidget {
  const TeethViewBody({super.key});

  @override
  State<TeethViewBody> createState() => _TeethViewBodyState();
}

class _TeethViewBodyState extends State<TeethViewBody> {
  final formKey = GlobalKey<FormState>();

  final List<String> dropDownItems = [
    '',
    'ياسر جعفر',
    'سمر المفتى',
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
                        SvgAssets.teethSvg,
                        height: 100.h,
                        width: 200.w,
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
                ),
                SizedBox(
                  height: 10.h,
                ),
                const TeethImportantNotice(
                  text:
                      'إذا كان لديك قومسيون من مستشفى أو مركز الأسنان تأكد من وجود التحويل الخاص بك معك عند وجودك فى اليوم المحدد',
                ),
                SizedBox(
                  height: 20.h,
                ),
                const TeethFilePicker(),
                SizedBox(
                  height: 50.h,
                ),
                CustomButtonAnimation(
                  onPressed: () async {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'تم حجز ميعاد بنجاح',
                          style: TextStyle(
                              color: Colors.white,
                              decorationStyle: TextDecorationStyle.double),
                        ),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  color: Colors.amber,
                  child: Text(
                    textAlign: TextAlign.center,
                    'إحجز ميعاد',
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
