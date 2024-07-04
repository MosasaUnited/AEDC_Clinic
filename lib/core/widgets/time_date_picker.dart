import 'package:flutter/material.dart';

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
            children: [],
          ),
        ),
      ),
    );
  }
}
