import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class ChooseXrayHosText extends StatelessWidget {
  const ChooseXrayHosText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textDirection: TextDirection.rtl,
          'اختر مركز الأشعة المراد عمل به الآشعة من القائمة التالية',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
