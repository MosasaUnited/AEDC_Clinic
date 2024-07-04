import 'package:aedc_clinic/core/constants/svg_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_button_animation.dart';

class ExaminationViewBody extends StatefulWidget {
  const ExaminationViewBody({super.key});

  @override
  State<ExaminationViewBody> createState() => _ExaminationViewBodyState();
}

class _ExaminationViewBodyState extends State<ExaminationViewBody> {
  final pickTimeController = TextEditingController();

  final pickDateController = TextEditingController();

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
                    TextFormField(
                      controller: pickDateController,
                      decoration: const InputDecoration(
                        hintText: 'إختر اليوم',
                        border: OutlineInputBorder(),
                      ),
                      readOnly: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك اختر اليوم';
                        }
                        return null;
                      },
                      onTap: () async {
                        final selectDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.parse('2038-01-01'),
                        ).then((value) {
                          pickDateController.text =
                              DateFormat.yMMMd().format(value!);
                        });
                        if (selectDate != null) {
                          print(selectDate);
                          final formattedDate = selectDate.format(context);
                          pickDateController.text = formattedDate;
                        } else {
                          print('Date not selected');
                        }
                      },
                    ),
                    SizedBox(height: 20.h),
                    TextFormField(
                      controller: pickTimeController,
                      decoration: const InputDecoration(
                          hintText: 'إختر الوقت', border: OutlineInputBorder()),
                      readOnly: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'من فضلك اختار الوقت';
                        }
                        return null;
                      },
                      onTap: () async {
                        final selectTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                        if (selectTime != null) {
                          print(selectTime);
                          final formattedTime = selectTime.format(context);
                          pickTimeController.text = formattedTime;
                        } else {
                          print('Time is Not Selected');
                        }
                      },
                    ),
                  ],
                ),
              ),
              const Spacer(),
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
    );
  }
}
