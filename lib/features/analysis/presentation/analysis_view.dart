import 'package:aedc_clinic/features/analysis/presentation/screens/analysis_view_body.dart';
import 'package:flutter/material.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: AnalysisViewBody(),
      ),
    );
  }
}
