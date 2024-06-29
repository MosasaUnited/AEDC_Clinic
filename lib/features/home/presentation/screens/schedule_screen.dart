import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('مواعيدى', style: Styles.textStyle30)),
    );
  }
}
