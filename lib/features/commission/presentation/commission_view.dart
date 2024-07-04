import 'package:aedc_clinic/core/widgets/simple_appbar.dart';
import 'package:aedc_clinic/features/commission/presentation/screens/commission_view_body.dart';
import 'package:flutter/material.dart';

class CommissionView extends StatelessWidget {
  const CommissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const SimpleAppbar(),
        ),
        body: const CommissionViewBody(),
      ),
    );
  }
}
