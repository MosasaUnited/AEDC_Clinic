import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class TeethImportantNotice extends StatelessWidget {
  const TeethImportantNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textDirection: TextDirection.rtl,
          'إذا كان لديك قومسيون من مستشفى أو مركز الأسنان تأكد من وجود التحويل الخاص بك معك عند وجودك فى اليوم المحدد',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
        ),
        Text(
          textDirection: TextDirection.rtl,
          'من فضلك ارفع صورة القومسيون من هنا : ',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
