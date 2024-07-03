import 'package:aedc_clinic/features/commission/presentation/screens/commission_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CommissionView extends StatelessWidget {
  const CommissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: const CommissionViewBody(),
      ),
    );
  }
}
