import 'package:aedc_clinic/core/constants/image_assets.dart';
import 'package:aedc_clinic/core/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/employee_duties.dart';
import '../widgets/employee_rights.dart';

class KnowYourRightsDetails extends StatelessWidget {
  const KnowYourRightsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('حقوق و واجبات العاملين'),
          leading: const SimpleAppbar(),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.ehcCairoHospital,
                  height: 200.h,
                  width: double.infinity,
                ),
                const EmployeeRights(),
                SizedBox(
                  height: 20.h,
                ),
                const Divider(),
                SizedBox(
                  height: 20.h,
                ),
                const EmployeeDuties(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
