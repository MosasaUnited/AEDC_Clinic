import 'package:aedc_clinic/core/widgets/simple_appbar.dart';
import 'package:aedc_clinic/features/analysis/presentation/screens/analysis_view_body.dart';
import 'package:flutter/material.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const SimpleAppbar(),
        ),
        body: const AnalysisViewBody(),
      ),
    );
  }
}
