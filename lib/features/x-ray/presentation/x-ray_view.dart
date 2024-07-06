import 'package:aedc_clinic/core/widgets/simple_appbar.dart';
import 'package:aedc_clinic/features/x-ray/presentation/screens/x-ray_view_body.dart';
import 'package:flutter/material.dart';

class XrayView extends StatelessWidget {
  const XrayView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: const SimpleAppbar(),
      ),
      body: const XrayViewBody(),
    ));
  }
}
