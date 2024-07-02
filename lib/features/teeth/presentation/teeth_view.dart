import 'package:aedc_clinic/features/teeth/presentation/screens/teeth_view_body.dart';
import 'package:flutter/material.dart';

class TeethView extends StatelessWidget {
  const TeethView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: TeethViewBody(),
    ));
  }
}
