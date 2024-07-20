import 'package:aedc_clinic/core/widgets/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/styles.dart';
import '../../../../core/widgets/custom_button_animation.dart';
import '../widgets/teeth_file_picker.dart';
import '../widgets/teeth_important_notice.dart';

class TeethCommissionScreen extends StatelessWidget {
  const TeethCommissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SimpleAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TeethImportantNotice(
              text:
                  'إذا كان لديك قومسيون من مستشفى أو مركز الأسنان تأكد من وجود التحويل الخاص بك معك عند وجودك فى اليوم المحدد',
            ),
            SizedBox(
              height: 20.h,
            ),
            const TeethFilePicker(),
            SizedBox(
              height: 50.h,
            ),
            CustomButtonAnimation(
              onPressed: () async {
                Future.delayed(const Duration(milliseconds: 400), () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'تم حجز ميعاد بنجاح',
                        style: TextStyle(
                            color: Colors.white,
                            decorationStyle: TextDecorationStyle.double),
                      ),
                      backgroundColor: Colors.green,
                    ),
                  );
                });
              },
              color: Colors.amber,
              child: Text(
                textAlign: TextAlign.center,
                'إحجز ميعاد',
                style: Styles.textStyle20.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
