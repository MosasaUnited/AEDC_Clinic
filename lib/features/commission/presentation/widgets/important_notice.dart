import 'package:aedc_clinic/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImportantNotice extends StatelessWidget {
  const ImportantNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          textDirection: TextDirection.rtl,
          children: [
            Text(
              'ملاحظة هامة',
              style: Styles.textStyle20,
            ),
            SizedBox(
              width: 5.w,
            ),
            Icon(
              Icons.arrow_back_ios_outlined,
            ),
            Icon(
              Icons.arrow_back_ios_outlined,
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          textDirection: TextDirection.rtl,
          'إذا تمت الموافقة على الاسترداد من لجنة القومسيون الطبى بشركة الخدمات الطبية يتم الاسترداد فى غضون شهرين من تاريخه',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
