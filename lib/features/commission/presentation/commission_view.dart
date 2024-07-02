import 'package:aedc_clinic/features/commission/presentation/screens/commission_view_body.dart';
import 'package:flutter/material.dart';

class CommissionView extends StatelessWidget {
  const CommissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CommissionViewBody(),
      ),
    );
  }
}
