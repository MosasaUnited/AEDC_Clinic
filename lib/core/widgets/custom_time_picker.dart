import 'package:flutter/material.dart';

class CustomTimePicker extends StatelessWidget {
  CustomTimePicker(
      {super.key, required this.hintText, required this.validatedText});

  final pickTimeController = TextEditingController();

  final String hintText;

  final String validatedText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: pickTimeController,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
      readOnly: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatedText;
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
    );
  }
}
