import 'package:aedc_clinic/features/monthly_treatment/presentation/screens/monthly_treatment_view_body.dart';
import 'package:flutter/material.dart';

class MonthlyTreatmentView extends StatelessWidget {
  const MonthlyTreatmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: MonthlyTreatmentViewBody(),
    ));
  }
}
