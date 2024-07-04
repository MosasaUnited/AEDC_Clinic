import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TimeDatePicker extends StatefulWidget {
  const TimeDatePicker({super.key});

  @override
  State<TimeDatePicker> createState() => _TimeDatePickerState();
}

class _TimeDatePickerState extends State<TimeDatePicker> {
  final pickTimeController = TextEditingController();

  final pickDateController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: pickDateController,
                decoration: const InputDecoration(
                    hintText: 'إختر اليوم', border: OutlineInputBorder()),
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
                    pickDateController.text = DateFormat.yMMMd().format(value!);
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
                    return 'Please choose time';
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
                    print('Time not selected');
                  }
                },
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
