import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('حسابى', style: Styles.textStyle30)),
    );
  }
}
