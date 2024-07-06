import 'package:aedc_clinic/features/teeth/presentation/screens/teeth_view_body.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/simple_appbar.dart';

class TeethView extends StatelessWidget {
  const TeethView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: const SimpleAppbar(),
      ),
      body: const TeethViewBody(),
    ));
  }
}
