import 'package:aedc_clinic/core/theme/styles.dart';
import 'package:flutter/material.dart';

class MedicalHistoryScreen extends StatelessWidget {
  const MedicalHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'السجل المرضى',
        style: Styles.textStyle30,
      )),
    );
  }
}
