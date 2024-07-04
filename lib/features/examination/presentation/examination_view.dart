import 'package:aedc_clinic/core/widgets/simple_appbar.dart';
import 'package:aedc_clinic/features/examination/presentation/screens/examination_view_body.dart';
import 'package:flutter/material.dart';

class ExaminationView extends StatelessWidget {
  const ExaminationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: const SimpleAppbar(),
      ),
      body: const ExaminationViewBody(),
    ));
  }
}
