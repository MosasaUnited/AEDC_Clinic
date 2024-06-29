import 'package:aedc_clinic/features/choose_clinic/presentation/screens/choose_clinic_items.dart';
import 'package:flutter/material.dart';

class ChooseClinicView extends StatelessWidget {
  const ChooseClinicView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TappableChooseClinicScreen(),
        ],
      ),
    );
  }
}
