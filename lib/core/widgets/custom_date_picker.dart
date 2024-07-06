import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomDatePicker extends StatelessWidget {
  CustomDatePicker(
      {super.key, required this.hintText, required this.validatorText});

  final pickDateController = TextEditingController();

  final String hintText;

  final String validatorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: pickDateController,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
      readOnly: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText;
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
    );
  }
}
