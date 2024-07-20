import 'package:aedc_clinic/core/widgets/custom_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/svg_assets.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/theme/colors.dart';
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomButtonAnimation(
                  onPressed: () async {
                    Future.delayed(const Duration(milliseconds: 400), () {
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
                    });
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
                  height: 20.h,
                ),
                Row(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: TextButton(
                        onPressed: () {
                          GoRouter.of(context).push(AppRouter.kTeethCommission);
                        },
                        child: Text(
                          'إضغط هنا',
                          style: Styles.textStyle12.copyWith(
                            color: MyColors.appColor,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'لديك قومسيون ؟',
                        style: Styles.textStyle12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
